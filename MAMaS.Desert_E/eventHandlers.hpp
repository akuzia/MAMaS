/*
		MAMaS EventHandlers
		Author: Blender
		Usage:
			Put your script to EH classes below as parameter value.
			Recommended to use your function/module name as parameter name.
			You can use Server/Client subclasses or just write your parameter in parent EH class for execution on both - server and client.

		Example:
		class PostInit {
			class Server {
				myHint = "My Server Hint!";
			};
			class Client {
				myHint = "Client Hint!";
			};
			myHint = "Hint on server and client!";
		};
*/


class PreInit {
	class Server {
	};
	class Client {
	};
};

class PostInit {
	class Server {
	};
	class Client {
	};
};

class WarBegins {
	class Server {
		removeBots = "call compile preprocessFileLineNumbers 'MAMaS\Scripts\srv_RemoveBotsOnStart.sqf'";
	};
	class Client {
	};
};