package main

// the file window-size-based-on-resolution.go is used to set the initial
// dimension of the window based on screen resolution.
//
// The following example sets the window to take all of the monitor screen
// minus a border.

import (
	"fmt"

	"github.com/go-gl/glfw/v3.3/glfw"
)

const windowBorder = 100

func init() {
	// Notice: Code in init() delays first frame!

	// Not best practice, you should let go-flutter make this call.
	glfw.Init()
	err := glfw.Init()
	if err != nil {
		panic(err)
	}
	//vidMoce := glfw.GetPrimaryMonitor().GetVideoMode()

	fmt.Println("window-size-based-on-resolution init")

	// 获取屏幕分辨率
	screenW := glfw.GetPrimaryMonitor().GetVideoMode().Width
	screenH := glfw.GetPrimaryMonitor().GetVideoMode().Height

	fmt.Printf("screenW:%d,screenH:%d\n", screenW, screenH)

	// 设置窗口初始尺寸
	/* 	options = append(options,
	flutter.WindowInitialDimensions(
		screenW-windowBorder*2,
		screenH-windowBorder*2,
	)) */
	// 设置窗口初始位置
	/* 	options = append(options,
		flutter.WindowInitialLocation(x, y),
	) */

	// 获取窗口尺寸
	// glfw.GetCurrentContext().GetSize()
	/* 	//windowW, windowH :=
	   	fmt.Printf("windowW:%d,windowH:%d\n", windowW, windowH)

	   	var x, y = (screenW - windowW) / 2, (screenH - windowH) / 2
	   	fmt.Println("x", x, "y", y) */
}
