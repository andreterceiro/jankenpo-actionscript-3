package{
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	
	public class Jankenpo extends MovieClip {		
	    private var computerChoices = ["paper", "rock", "scissors"];
		
		public function Jankenpo(){
			mcPaper.addEventListener(MouseEvent.CLICK, mcPaperClickHandler);
			mcRock.addEventListener(MouseEvent.CLICK, mcRockClickHandler);
			mcScissors.addEventListener(MouseEvent.CLICK, mcScissorsClickHandler);
		}
		
		private function getComputerChoice() {
			return this.computerChoices[Math.floor(Math.random()*3) + ""];
		}
		
		public function mcPaperClickHandler(event: MouseEvent) {
			evaluate("paper");
		}

		public function mcRockClickHandler(event: MouseEvent) {
			evaluate("rock");
		}
		
		public function mcScissorsClickHandler(event: MouseEvent) {
			evaluate("scissors");
		}
		
		private function evaluate(userChoice) {
			var computerChoice:String = this.getComputerChoice();
						
			if ((userChoice=="paper" && computerChoice == "rock") || (userChoice=="rock" && computerChoice=="scissors") || (userChoice=="scissors" && computerChoice=="paper")) {
				txtWinner.text = "user (you)";																																											 
			} else if (userChoice == computerChoice) {
				txtWinner.text = "draw";
			} else {
				txtWinner.text = "computer";
			}
			
			/*
				trace("*************");
				trace(computerChoice);
				trace(userChoice);
				trace(computerChoice == userChoice);
				trace("*************");
			*/
			txtComputerChoice.text = computerChoice;
		}
	}
}