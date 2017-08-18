package main

import (
	"fmt"
	"s3upload/config"
	"s3upload/dirs"
	"s3upload/upload"
	"time"
)

func main() {
	fmt.Println("[", time.Now(), "] Starting")

	// ct := upload.GetContentType("index.json")
	// fmt.Println(":: ", ct)

	// 1
	_config := config.ReadConfig("./config.json")

	// 2
	files2Upload := dirs.GetDirContent(_config.SourceDir)
	fmt.Println(len(files2Upload), "files do be uploaded.")

	// 3 starts to upload...
	upload.Upload(files2Upload, _config)

	fmt.Println("[", time.Now(), "] Finished")
}
