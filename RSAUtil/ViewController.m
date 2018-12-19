//
//  ViewController.m
//  RSAUtil
//
//  Created by ideawu on 7/14/15.
//  Copyright (c) 2015 ideawu. All rights reserved.
//

#import "ViewController.h"
#import "RSA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	NSString *pubkey = @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCPegU1e8FZrnuKJKUF69YmRfcZdckB4F/KWrt7KCeMnv87MKGGsjF3WeUvp3m3vCzmHNoUJgQyWCfsj4DHWUCjVnJVWuPs5Xr5tBJh8hq/wVtVQ7dYcwYVt0CrZK6D2nb4LDa9Cbh54cZCQ7vlNxWTVoVnRH758LYgIs9l2WtqYwIDAQAB";
    
	NSString *privkey = @"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAI96BTV7wVmue4okpQXr1iZF9xl1yQHgX8pau3soJ4ye/zswoYayMXdZ5S+nebe8LOYc2hQmBDJYJ+yPgMdZQKNWclVa4+zlevm0EmHyGr/BW1VDt1hzBhW3QKtkroPadvgsNr0JuHnhxkJDu+U3FZNWhWdEfvnwtiAiz2XZa2pjAgMBAAECgYAqwzZ8O1dkcGG3ybY5rpHUNHQybW2sloBWYnaQfWZUPitaK+NorwGZTfzGGEdp4LcNGrpQ2QfVLXswwZCjWdGuphLhIj1+ryXxnN0ggdEanAD4qAW4mbAt0HDD54MF/7bwv/wtr3CNEJjw9Bkmmo4Akyhwruepg9jJzJP7CYafEQJBAP/Kye3pWSsEBlRctQ67aYVJeJQOjtYyAzTMQwJOvaWi9d2dU0f0X+6xApHateHzJC4TtU3mXEZKqjNfDF3C9YkCQQCPl936ntlW0wzDRDYsrfROFTwZHlqB6VmTUIgzuxBqhjtVExgBqvvNwchMZfdILYUsi83wqu6++qlpNbfdshGLAkEApTb8OljQKUKOPAstPvi57UdJRIgqphrji0Sru1/Uipm5KI0nb4BePjPCryaO+AQtyD0ei9RQoW40hL3NpPn50QJAD2V2PLAZl7Crdqhyspm4T0MBnaPein1tyFjjMcDGAtX/uKCCe3NM6oPzqRVpzUhsNhmLbFm3naycy5Yh79hu/wJAfW4MSXWPgv1CpRfgyLZKI89cf23EHUv68cZNf/9tR88QpOAb8I9rocJDzc6dyRSdpAVpay4LsXzTz7E1VRKROQ==";

	NSString *originString = @"xlgcx";
	
	NSLog(@"Original string(%d): %@", (int)originString.length, originString);
	
	NSString *encWithPubKey = [RSA encryptString:originString publicKey:pubkey];
	NSLog(@"Enctypted with public key: %@", encWithPubKey);

	NSString *decWithPrivKey = [RSA decryptString:encWithPubKey privateKey:privkey];
	NSLog(@"Decrypted with private key: %@", decWithPrivKey);
}

@end
