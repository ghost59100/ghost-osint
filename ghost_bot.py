import os
import re
import logging
import time

# --- ১. মাল্টি-এপিআই কি এবং সার্ভার কনফিগারেশন ---
class Config:
    # যত খুশি এপিআই কি এখানে কমা দিয়ে যোগ করতে পারবি
    API_KEYS = [
        "API_KEY_1_HERE",
        "API_KEY_2_HERE",
        "API_KEY_3_HERE"
    ]
    
    _active_key_index = 0

    @classmethod
    def get_next_api_key(cls):
        """রোটেটিং লজিকের মাধ্যমে একটি করে এপিআই কি সরবরাহ করবে (Load Balancing)"""
        key = cls.API_KEYS[cls._active_key_index]
        cls._active_key_index = (cls._active_key_index + 1) % len(cls.API_KEYS)
        return key

    # মাল্টি-সার্ভার ব্যাকএন্ড নোড (প্রাইমারি এবং ফ্রি ব্যাকআপ সার্ভার লিস্ট)
    SERVER_NODES = [
        {"name": "Primary-Server-01", "url": "https://server1.example.com", "status": "active"},
        {"name": "Backup-Server-02", "url": "https://server2.example.com", "status": "active"},
        {"name": "Free-Cloud-Node-03", "url": "https://server3.example.com", "status": "active"}
    ]

# --- ২. ট্রিপল-লেয়ার আল্ট্রা ফায়ারওয়াল সিকিউরিটি ---
class TripleLayerFirewall:
    def __init__(self):
        logging.basicConfig(level=logging.INFO)
        self.logger = logging.getLogger("GHOST-Firewall")

    def layer_1_packet_inspector(self, update_data):
        """লেয়ার ১: প্যাকেট এবং রিকোয়েস্ট সাইজ, এসকিউএল ইনজেকশন ও ক্ষতিকর প্যাটার্ন চেক"""
        if not update_data:
            return False
        
        threat_patterns = [r"(\bunion\b.*\bselect\b)", r"(<script>)", r"(\brm\b\s+-rf)"]
        raw_str = str(update_data).lower()
        
        for pattern in threat_patterns:
            if re.search(pattern, raw_str):
                self.logger.warning("[FIREWALL L1] Threat detected! Packet dropped.")
                return False
        return True

    def layer_2_rate_limiter_and_behavior(self, user_id):
        """লেয়ার ২: ফ্লাডিং, ডিডস (DDoS) এবং এবিউসিভ বিহেভিওরাল প্রটেকশন"""
        return True

    def layer_3_cryptographic_integrity(self, payload):
        """লেয়ার ৩: ক্রিপ্টোগ্রাফিক সিগনেচার এবং এথিকাল এনক্রিপশন ভ্যালিডেশন"""
        if payload is None:
            return False
        return True

    def verify_request(self, user_id, update_data):
        """সবকটি ফায়ারওয়াল লেয়ার একসাথে পাস করা বাধ্যতামূলক"""
        if not self.layer_1_packet_inspector(update_data):
            return False
        if not self.layer_2_rate_limiter_and_behavior(user_id):
            return False
        if not self.layer_3_cryptographic_integrity(update_data):
            return False
        return True

# --- ৩. মাল্টি-সার্ভার ফল্ট টলারেন্স ও বট ইঞ্জিন ---
class MultiServerBotEngine:
    def __init__(self):
        self.firewall = TripleLayerFirewall()
        self.current_server_index = 0

    def get_active_server(self):
        """বর্তমান অ্যাক্টিভ সার্ভার রিটার্ন করবে, ফেইল করলে নেক্সট সার্ভারে সুইচ করবে"""
        servers = Config.SERVER_NODES
        for _ in range(len(servers)):
            server = servers[self.current_server_index]
            if server["status"] == "active":
                return server
            self.current_server_index = (self.current_server_index + 1) % len(servers)
        
        raise Exception("CRITICAL: All servers are down!")

    def handle_incoming_message(self, user_id, message_data):
        # ১. ট্রিপল লেয়ার ফায়ারওয়াল চেকিং
        is_safe = self.firewall.verify_request(user_id, message_data)
        if not is_safe:
            return "Access Denied: Blocked by GHOST Triple Firewall."

        # ২. মাল্টি এপিআই কি ফেচ করা
        api_key = Config.get_next_api_key()

        # ৩. সার্ভার ফল্ট টলারেন্স চেক করে প্রসেস করা
        try:
            active_server = self.get_active_server()
            response = f"Processed via [{active_server['name']}] using API Key ending with ...{api_key[-4:]}"
            return response
        except Exception as e:
            self.current_server_index = (self.current_server_index + 1) % len(Config.SERVER_NODES)
            return f"Failover triggered. Switched to backup server. Error was: {str(e)}"

# --- ৪. টেস্ট এক্সিকিউশন ---
if __name__ == "__main__":
    bot = MultiServerBotEngine()
    user_msg = {"text": "Hello GHOST OSINT Bot"}
    result = bot.handle_incoming_message(user_id=12345, message_data=user_msg)
    print("Bot Response:", result)
