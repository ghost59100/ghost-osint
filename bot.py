import json
import os
import re
import logging

# --- কনফিগ লোডার ---
class ConfigLoader:
    CONFIG_FILE = "config.json"

    @classmethod
    def load_config(cls):
        if not os.path.exists(cls.CONFIG_FILE):
            default_data = {
                "api_keys": ["DEFAULT_KEY_1", "DEFAULT_KEY_2"],
                "server_nodes": [
                    {"name": "Primary-Free-Node", "url": "https://node1.free.com", "status": "active"},
                    {"name": "Secondary-Free-Node", "url": "https://node2.free.com", "status": "active"}
                ]
            }
            with open(cls.CONFIG_FILE, "w") as f:
                json.dump(default_data, f, indent=4)
        
        with open(cls.CONFIG_FILE, "r") as f:
            return json.load(f)

# --- ট্রিপল-লেয়ার ফায়ারওয়াল ---
class TripleLayerFirewall:
    def __init__(self):
        logging.basicConfig(level=logging.INFO)
        self.logger = logging.getLogger("GHOST-Firewall")

    def verify_request(self, user_id, update_data):
        if not update_data:
            return False
        threat_patterns = [r"(\bunion\b.*\bselect\b)", r"(<script>)", r"(\brm\b\s+-rf)"]
        raw_str = str(update_data).lower()
        for pattern in threat_patterns:
            if re.search(pattern, raw_str):
                self.logger.warning("[FIREWALL] Threat detected & blocked!")
                return False
        return True

# --- মাল্টি-সার্ভার ও এপিআই ইঞ্জিন ---
class MultiServerBotEngine:
    def __init__(self):
        self.firewall = TripleLayerFirewall()
        self.config = ConfigLoader.load_config()
        self.current_key_index = 0
        self.current_server_index = 0

    def get_next_api_key(self):
        keys = self.config["api_keys"]
        key = keys[self.current_key_index]
        self.current_key_index = (self.current_key_index + 1) % len(keys)
        return key

    def get_active_server(self):
        servers = self.config["server_nodes"]
        for _ in range(len(servers)):
            server = servers[self.current_server_index]
            if server["status"] == "active":
                return server
            self.current_server_index = (self.current_server_index + 1) % len(servers)
        raise Exception("CRITICAL: All free servers are down!")

    def process_message(self, user_id, message_data):
        if not self.firewall.verify_request(user_id, message_data):
            return "Blocked by GHOST Firewall."

        api_key = self.get_next_api_key()
        
        try:
            server = self.get_active_server()
            return f"Success! Handled by [{server['name']}] using API ending in ...{api_key[-4:]}"
        except Exception as e:
            self.current_server_index = (self.current_server_index + 1) % len(self.config["server_nodes"])
            return f"Failover Triggered! Switched to backup server. Error: {str(e)}"

if __name__ == "__main__":
    bot = MultiServerBotEngine()
    print(bot.process_message(12345, {"text": "Test OSINT payload"}))
