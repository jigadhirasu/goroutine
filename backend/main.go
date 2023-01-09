package main

import (
	"fmt"
	"log"
	"math/rand"
	"runtime"
	"time"
)

func main() {

	normal()
	chanf()

	var ms runtime.MemStats
	runtime.ReadMemStats(&ms)
	log.Printf("Alloc:%d(bytes) HeapIdle:%d(bytes) HeapReleased:%d(bytes)", ms.Alloc, ms.HeapIdle, ms.HeapReleased)
}

func normal() {
	for i := 0; i < 100; i++ {
		fmt.Println(i)
	}

}

func chanf() {
	queue := [100]chan int{}

	for i := 0; i < 100; i++ {
		queue[i] = make(chan int)
		go func(x int, ch chan<- int) {
			time.AfterFunc(time.Microsecond*time.Duration(rand.Int63n(300)), func() {
				queue[x] <- x
			})
		}(i, queue[i])
	}

	for _, result := range queue {
		fmt.Println(<-result)
	}
}
