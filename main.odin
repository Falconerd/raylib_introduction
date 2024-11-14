package main

import rl "vendor:raylib"

// 1. Create a Window

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	// This code is here so the window doesn't close instantly
// 	for !rl.WindowShouldClose() {
// 		// These lines make sure the events (like pressing Escape) are handled
// 		rl.BeginDrawing()
// 		rl.EndDrawing()
// 	}
// }


// 2. Draw Simple Shapes

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	for !rl.WindowShouldClose() {
// 		rl.BeginDrawing()

// 		rl.DrawCircleV({690, 360}, 50, rl.YELLOW)
// 		rl.DrawRectangleLinesEx({100, 100, 300, 100}, 3, rl.BLUE)
// 		rl.DrawPoly({700, 500}, 5, 25, 0, rl.RED)
// 		rl.DrawLineBezier({100, 500}, {500, 300}, 4, rl.WHITE)

// 		rl.EndDrawing()
// 	}
// }


// 3. Handle Input

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	circle_pos: rl.Vector2
// 	poly_sides: i32

// 	for !rl.WindowShouldClose() {
// 		if rl.IsMouseButtonPressed(.LEFT) {
// 			circle_pos = rl.GetMousePosition()
// 		}

// 		if rl.IsKeyDown(.E) {
// 			poly_sides += 1
// 		}
// 		if rl.IsKeyDown(.N) {
// 			poly_sides -= 1
// 		}

// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawCircleV(circle_pos, 50, rl.YELLOW)
// 		rl.DrawRectangleLinesEx({100, 100, 300, 100}, 3, rl.BLUE)
// 		rl.DrawPoly({700, 500}, poly_sides, 25, 0, rl.RED)
// 		rl.DrawLineBezier({100, 500}, {500, 300}, 4, rl.WHITE)

// 		rl.EndDrawing()
// 	}
// }


// 4. Loading and Drawing Textures

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	mouse_pos: rl.Vector2
// 	image := rl.LoadImage("./my_image.png")

// 	text: cstring = "Best girl"
// 	text_width := rl.MeasureText(text, 20)
// 	rl.ImageDrawText(
// 		&image,
// 		text,
// 		image.width / 2 - text_width / 2,
// 		image.height - 140,
// 		20,
// 		rl.WHITE,
// 	)

// 	texture := rl.LoadTextureFromImage(image)
// 	// Also,
// 	// rl.LoadTexture("./my_image.png")

// 	for !rl.WindowShouldClose() {
// 		mouse_pos := rl.GetMousePosition()

// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawTexture(
// 			texture,
// 			i32(mouse_pos.x) - image.width / 2,
// 			i32(mouse_pos.y) - image.height / 2,
// 			rl.WHITE,
// 		)

// 		rl.EndDrawing()
// 	}
// }


// 5. Basic animation

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	pos_a := rl.Vector2{490, 360}
// 	pos_b := rl.Vector2{890, 360}

// 	current_pos := pos_a
// 	starting_pos := pos_a
// 	target_pos := pos_b

// 	speed :: 350
// 	dist :: 5

// 	for !rl.WindowShouldClose() {
// 		dt := rl.GetFrameTime()

// 		if rl.Vector2Distance(current_pos, target_pos) <= dist {
// 			starting_pos, target_pos = target_pos, starting_pos
// 		}

// 		dir := rl.Vector2Normalize(target_pos - starting_pos)

// 		current_pos += dir * dt * speed

// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawPoly(current_pos, 5, 25, 0, rl.RED)

// 		rl.EndDrawing()
// 	}
// }


// 6. Playing sound

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)
// 	rl.InitAudioDevice()

// 	sfx := rl.LoadSound("./sfx.mp3")

// 	pos_a := rl.Vector2{490, 360}
// 	pos_b := rl.Vector2{890, 360}

// 	current_pos := pos_a
// 	starting_pos := pos_a
// 	target_pos := pos_b

// 	speed :: 350
// 	dist :: 5

// 	for !rl.WindowShouldClose() {
// 		dt := rl.GetFrameTime()

// 		if rl.Vector2Distance(current_pos, target_pos) <= dist {
// 			starting_pos, target_pos = target_pos, starting_pos
// 			rl.PlaySound(sfx)
// 		}

// 		dir := rl.Vector2Normalize(target_pos - starting_pos)

// 		current_pos += dir * dt * speed

// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawPoly(current_pos, 5, 25, 0, rl.RED)

// 		rl.EndDrawing()
// 	}
// }


// 7. Text rendering

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	font := rl.LoadFontEx("./font.ttf", 24, nil, 250)

// 	for !rl.WindowShouldClose() {
// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawText("Hello there!", 8, 8, 20, rl.WHITE)
// 		rl.DrawTextEx(font, "Ah... That's better.", 50, 24, 0, rl.YELLOW)

// 		text: cstring = `New lines
// are also
// supported
// yay`

// 		rl.DrawTextEx(font, text, 150, 24, 0, rl.SKYBLUE)

// 		rl.DrawTextEx(font, "You can use\\n\nas well", {400, 150}, 24, 0, rl.RED)

// 		rl.EndDrawing()
// 	}
// }


// 8. Basic collision detection

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	rect_a := rl.Rectangle{100, 100, 300, 100}
// 	rect_b := rl.Rectangle{200, 150, 250, 100}

// 	speed :: 250

// 	for !rl.WindowShouldClose() {
// 		dt := rl.GetFrameTime()

// 		if rl.IsKeyDown(.E) {
// 			rect_b.y += speed * dt
// 		}

// 		if rl.IsKeyDown(.N) {
// 			rect_b.y -= speed * dt
// 		}

// 		rl.BeginDrawing()
// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawRectangleRec(rect_a, rl.YELLOW)
// 		rl.DrawRectangleRec(rect_b, rl.WHITE)

// 		overlap_rect := rl.GetCollisionRec(rect_a, rect_b)

// 		rl.DrawRectangleLinesEx(overlap_rect, 3, rl.RED)

// 		rl.EndDrawing()
// 	}
// }


// 9. Using the camera (2D)

// main :: proc() {
// 	rl.InitWindow(1280, 720, "programvideogames.com")
// 	rl.SetTargetFPS(60)

// 	camera := rl.Camera2D {
// 		zoom = 1,
// 	}

// 	rect_a := rl.Rectangle{100, 100, 300, 100}
// 	rect_b := rl.Rectangle{200, 150, 250, 100}

// 	speed :: 250

// 	for !rl.WindowShouldClose() {
// 		dt := rl.GetFrameTime()

// 		if rl.IsKeyDown(.E) {
// 			camera.offset.y += speed * dt
// 		}

// 		if rl.IsKeyDown(.N) {
// 			camera.offset.y -= speed * dt
// 		}

// 		rl.BeginDrawing()
// 		// Make sure to begin and end camera mode
// 		rl.BeginMode2D(camera)

// 		rl.ClearBackground(rl.BLACK)

// 		rl.DrawRectangleRec(rect_a, rl.YELLOW)
// 		rl.DrawRectangleRec(rect_b, rl.WHITE)

// 		overlap_rect := rl.GetCollisionRec(rect_a, rect_b)

// 		rl.DrawRectangleLinesEx(overlap_rect, 3, rl.RED)

// 		rl.EndMode2D()
// 		rl.EndDrawing()
// 	}
// }


// 10. Render Textures, Post Processing Shaders

main :: proc() {
	rl.InitWindow(1280, 720, "programvideogames.com")
	rl.SetTargetFPS(60)

	bloom := rl.LoadShader("", "./bloom.frag")
	render_texture := rl.LoadRenderTexture(1280, 720)

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground(rl.BLACK)

		// Draw to render texture instead of screen
		rl.BeginTextureMode(render_texture)

		rl.DrawRectangleRec({100, 100, 300, 100}, rl.YELLOW)
		rl.DrawRectangleRec({200, 150, 250, 100}, rl.BLUE)

		rl.EndTextureMode()

		// Draw render texture with post-processing shader at the end
		rl.BeginShaderMode(bloom)
		rl.DrawTextureRec(render_texture.texture, {0, 0, 1280, -720}, 0, rl.WHITE)
		rl.EndShaderMode()

		rl.EndDrawing()
	}
}

