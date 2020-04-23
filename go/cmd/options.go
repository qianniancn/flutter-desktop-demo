package main

import (
	"github.com/go-flutter-desktop/go-flutter"
)

var options = []flutter.Option{
	// 初始窗口大小
	flutter.WindowInitialDimensions(800, 500),
	// 限制窗口的最小宽高和最大宽高
	// flutter.WindowDimensionLimits(500, 300, 800, 500),
	// 初始窗口启动位置
	// flutter.WindowInitialLocation()
}
