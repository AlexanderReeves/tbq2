// This file demonstrates that the code is working by
// Spamming the chat with "Hello World"

// Import world component from "@minecraft/server"
import * from '@minecraft/server';

import * as ui from '@minecraft/server-ui'
// Subscribe to an event that calls every Minecraft tick
system.runInterval(() => {
// Spams the chat with "Hello World" with world.sendMessage function in API
//world.sendMessage("Hello World");

// or run a command in overworld dimension
// using native API methods (such as world.sendMessage) are recommended whenever possible.
world.getDimension("overworld").runCommand("say Hello World");
});



