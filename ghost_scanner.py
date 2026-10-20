import os
import sys

def banner():
    print("""
    ========================================
       GHOST MULTI-TOOL OSINT AUTOMATION
    ========================================
    """)

def main():
    banner()
    if len(sys.argv) < 2:
        print("[-] ব্যবহারবিধি: python ghost_scanner.py <target_email>")
        sys.exit(1)
        
    target = sys.argv[1]
    print(f"[+] টার্গেট ইমেল: {target}\n")
    
    # ১. Holehe রান করা
    print("[*] ১. Holehe স্ক্যান শুরু হচ্ছে...")
    os.system(f"holehe {target}")
    
    print("\n" + "="*40 + "\n")
    
    # ২. User-Scanner রান করা
    print("[*] ২. User-Scanner স্ক্যান শুরু হচ্ছে...")
    os.system(f"cd ~/user-scanner && python -m user_scanner -e {target}")
    
    print("\n" + "="*40 + "\n")
    
    # ৩. MOSINT রান করা
    print("[*] ৩. MOSINT স্ক্যান শুরু হচ্ছে...")
    os.system(f"mosint {target}")
    
    print("\n[+] সব টুলের স্ক্যান সম্পন্ন হয়েছে!")

if __name__ == "__main__":
    main()
