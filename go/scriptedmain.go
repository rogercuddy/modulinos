package scriptedmain
 
import "fmt"

func meaningOfLife() int {
	return 42
}
 
func main() {
	fmt.Println("Main: The meaning of life is", meaningOfLife())
}