.class public Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;
.super Landroid/view/View;
.source "TouchPadTestFiveSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchPadTestFiveSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLineView"
.end annotation


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private isGreen:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field mRectF:[Landroid/graphics/Rect;

.field private mX:F

.field private mY:F

.field positionx:[F

.field positiony:[F

.field final synthetic this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

.field private wandh:[I

.field x:Landroid/graphics/Rect;

.field x1:I

.field x10:I

.field x11:I

.field x12:I

.field x13:I

.field x14:I

.field x15:I

.field x16:I

.field x17:I

.field x18:I

.field x19:I

.field x2:I

.field x20:I

.field x21:I

.field x22:I

.field x23:I

.field x24:I

.field x25:I

.field x26:I

.field x27:I

.field x28:I

.field x29:I

.field x3:I

.field x30:I

.field x31:I

.field x32:I

.field x33:I

.field x34:I

.field x35:I

.field x36:I

.field x37:I

.field x38:I

.field x39:I

.field x4:I

.field x5:I

.field x6:I

.field x7:I

.field x8:I

.field x9:I

.field y1:I

.field y10:I

.field y11:I

.field y12:I

.field y13:I

.field y14:I

.field y15:I

.field y16:I

.field y17:I

.field y18:I

.field y19:I

.field y2:I

.field y20:I

.field y21:I

.field y22:I

.field y23:I

.field y24:I

.field y25:I

.field y26:I

.field y27:I

.field y28:I

.field y29:I

.field y3:I

.field y30:I

.field y31:I

.field y32:I

.field y33:I

.field y34:I

.field y35:I

.field y36:I

.field y37:I

.field y38:I

.field y39:I

.field y4:I

.field y40:I

.field y41:I

.field y42:I

.field y43:I

.field y44:I

.field y45:I

.field y46:I

.field y47:I

.field y48:I

.field y49:I

.field y5:I

.field y50:I

.field y51:I

.field y52:I

.field y53:I

.field y54:I

.field y55:I

.field y56:I

.field y57:I

.field y58:I

.field y59:I

.field y6:I

.field y60:I

.field y61:I

.field y62:I

.field y63:I

.field y64:I

.field y65:I

.field y66:I

.field y67:I

.field y68:I

.field y69:I

.field y7:I

.field y8:I

.field y9:I


# direct methods
.method public constructor <init>(Lcom/zte/engineer/TouchPadTestFiveSeven;Landroid/content/Context;)V
    .locals 12
    .parameter
    .parameter "c"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 449
    iput-object p1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    .line 450
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 254
    const/16 v1, 0xac

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->isGreen:[I

    .line 256
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #calls: Lcom/zte/engineer/TouchPadTestFiveSeven;->getWidthAndHeight()[I
    invoke-static {v1}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$000(Lcom/zte/engineer/TouchPadTestFiveSeven;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    .line 258
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    .line 259
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x2:I

    .line 260
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x3:I

    .line 261
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x4:I

    .line 262
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x5:I

    .line 263
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x6:I

    .line 264
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x7:I

    .line 265
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x8:I

    .line 266
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x9:I

    .line 267
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x10:I

    .line 269
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    .line 270
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    .line 271
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    .line 272
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xd

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    .line 273
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xe

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    .line 274
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    .line 275
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    .line 276
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    .line 277
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x12

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    .line 278
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x13

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    .line 280
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    .line 281
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    .line 282
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x16

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    .line 283
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x17

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    .line 284
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x18

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    .line 285
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x19

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    .line 286
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    .line 287
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1b

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    .line 288
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1c

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    .line 289
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1d

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x30:I

    .line 291
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x31:I

    .line 292
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x1f

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x32:I

    .line 293
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x33:I

    .line 294
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x21

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x34:I

    .line 295
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x22

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x35:I

    .line 296
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x23

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x36:I

    .line 297
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x24

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x37:I

    .line 298
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x25

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x38:I

    .line 299
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    mul-int/lit8 v1, v1, 0x26

    div-int/lit8 v1, v1, 0x26

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    .line 301
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    .line 302
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y2:I

    .line 303
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y3:I

    .line 304
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y4:I

    .line 305
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y5:I

    .line 306
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y6:I

    .line 307
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y7:I

    .line 308
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y8:I

    .line 309
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y9:I

    .line 310
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y10:I

    .line 312
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    .line 313
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    .line 314
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    .line 315
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xd

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    .line 316
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xe

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    .line 317
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    .line 318
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    .line 319
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    .line 320
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x12

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    .line 321
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x13

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    .line 323
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    .line 324
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    .line 325
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x16

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    .line 326
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x17

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    .line 327
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x18

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    .line 328
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x19

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    .line 329
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    .line 330
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1b

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    .line 331
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1c

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    .line 332
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1d

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    .line 334
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    .line 335
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x1f

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    .line 336
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    .line 337
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x21

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    .line 338
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x22

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    .line 339
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x23

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    .line 340
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x24

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    .line 341
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x25

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    .line 342
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x26

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    .line 343
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x27

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    .line 345
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x28

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    .line 346
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x29

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    .line 347
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2a

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    .line 348
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2b

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    .line 349
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2c

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    .line 350
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2d

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    .line 351
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2e

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    .line 352
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x2f

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    .line 353
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x30

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    .line 354
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x31

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    .line 356
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x32

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    .line 357
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x33

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    .line 358
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x34

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    .line 359
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x35

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    .line 360
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x36

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    .line 361
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x37

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    .line 362
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x38

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    .line 363
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x39

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    .line 364
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3a

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    .line 365
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3b

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y60:I

    .line 367
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3c

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y61:I

    .line 368
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3d

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y62:I

    .line 369
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3e

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y63:I

    .line 370
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x3f

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y64:I

    .line 371
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x40

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y65:I

    .line 372
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x41

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y66:I

    .line 373
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x42

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y67:I

    .line 374
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x43

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y68:I

    .line 375
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v8

    mul-int/lit8 v1, v1, 0x44

    div-int/lit8 v1, v1, 0x44

    iput v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    .line 377
    const/16 v1, 0x27

    new-array v1, v1, [F

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x2:I

    int-to-float v2, v2

    aput v2, v1, v8

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x3:I

    int-to-float v2, v2

    aput v2, v1, v7

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x4:I

    int-to-float v2, v2

    aput v2, v1, v11

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x5:I

    int-to-float v2, v2

    aput v2, v1, v10

    const/4 v2, 0x5

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x6:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x7:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x8:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x9:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x10:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x14

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x17

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x18

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x19

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1a

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1b

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1c

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1d

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x30:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1e

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x31:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1f

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x32:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x20

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x33:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x21

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x34:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x22

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x35:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x23

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x36:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x24

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x37:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x25

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x38:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x26

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    int-to-float v3, v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->positionx:[F

    .line 382
    const/16 v1, 0x45

    new-array v1, v1, [F

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y2:I

    int-to-float v2, v2

    aput v2, v1, v8

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y3:I

    int-to-float v2, v2

    aput v2, v1, v7

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y4:I

    int-to-float v2, v2

    aput v2, v1, v11

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y5:I

    int-to-float v2, v2

    aput v2, v1, v10

    const/4 v2, 0x5

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y6:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y7:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y8:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y9:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y10:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x14

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x17

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x18

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x19

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1a

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1b

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1c

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1d

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1e

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x1f

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x20

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x21

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x22

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x23

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x24

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x25

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x26

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x27

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x28

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x29

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2a

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2b

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2c

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2d

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2e

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x2f

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x30

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x31

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x32

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x33

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x34

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x35

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x36

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x37

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x38

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x39

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3a

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3b

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y60:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3c

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y61:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3d

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y62:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3e

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y63:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x3f

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y64:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x40

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y65:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x41

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y66:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x42

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y67:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x43

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y68:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x44

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    int-to-float v3, v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->positiony:[F

    .line 390
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x2:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y2:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x:Landroid/graphics/Rect;

    .line 392
    const/16 v1, 0xac

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y2:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y2:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y3:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y3:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y4:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y4:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y5:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v11

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y5:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y6:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y6:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y7:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y7:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y8:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y8:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y9:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y9:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y10:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y10:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x30:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x30:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x31:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x31:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x32:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x32:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x33:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x50

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x33:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x34:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x51

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x34:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x35:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x52

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x35:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x36:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x53

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x36:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x37:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x54

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x37:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x38:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x55

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x38:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y1:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x56

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y11:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x57

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y12:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x58

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y13:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x59

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y14:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y15:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y16:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y17:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y18:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y19:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y20:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x60

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y21:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x61

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y22:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x62

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y23:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x63

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y24:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x64

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y25:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x65

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y26:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x66

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y27:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x67

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y28:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x68

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y29:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x69

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y30:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y31:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y32:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y33:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y34:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y35:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y36:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x70

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y37:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x71

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y38:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x72

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y39:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x73

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y40:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x74

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y41:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x75

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y42:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x76

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y43:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x77

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y44:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x78

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y45:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x79

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y46:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y47:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y48:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y49:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y50:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y51:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y52:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x80

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y53:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x81

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y54:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x82

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y55:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x83

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y56:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x84

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y57:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x85

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y58:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x86

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y60:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x87

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y60:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y61:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x88

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y61:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y62:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x89

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y62:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y63:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y63:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y64:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y64:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y65:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y65:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y66:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y66:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y67:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y67:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y68:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y68:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x39:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x90

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x1:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x2:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x91

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x2:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x3:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x92

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x3:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x4:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x93

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x4:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x5:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x94

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x5:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x6:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x95

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x6:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x7:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x96

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x7:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x8:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x97

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x8:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x9:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x98

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x9:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x10:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x99

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x10:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x11:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x12:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x13:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x14:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x15:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x16:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x17:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x18:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x19:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x20:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x21:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x22:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x23:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x24:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x25:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x26:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x27:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    const/16 v2, 0xab

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x28:I

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y59:I

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->x29:I

    iget v7, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->y69:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mRectF:[Landroid/graphics/Rect;

    .line 452
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->wandh:[I

    aget v2, v2, v8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mBitmap:Landroid/graphics/Bitmap;

    .line 454
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mCanvas:Landroid/graphics/Canvas;

    .line 455
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    .line 456
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xac

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->isGreen:[I

    aput v9, v1, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method private isInRect(FFLandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 558
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchJuage(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 547
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xac

    if-ge v0, v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mRectF:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$200(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$200(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mRectF:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    #getter for: Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/engineer/TouchPadTestFiveSeven;->access$200(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 552
    iget-object v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->isGreen:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 547
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4080

    const/high16 v7, 0x4000

    .line 494
    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 495
    .local v0, dx:F
    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 496
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    iget v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    iget v5, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 498
    iput p1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    .line 499
    iput p2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    .line 501
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 488
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 489
    iput p1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    .line 490
    iput p2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    .line 491
    return-void
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mX:F

    iget v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 506
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 471
    const v2, 0xaaaa

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 472
    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 475
    .local v1, paint:Landroid/graphics/Paint;
    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xac

    if-ge v0, v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->mRectF:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 467
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0xac

    const/4 v7, 0x1

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 511
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 513
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 542
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->onTouchJuage(FF)V

    .line 543
    return v7

    .line 515
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->touch_start(FF)V

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 519
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->touch_move(FF)V

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 523
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->touch_up()V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, times:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    if-ge v0, v8, :cond_1

    .line 528
    iget-object v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->isGreen:[I

    aget v4, v4, v0

    if-ne v4, v7, :cond_0

    .line 529
    add-int/lit8 v1, v1, 0x1

    .line 530
    const-string v4, "Emode.TouchPadTestFiveSeven"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " times:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    :cond_1
    if-ne v1, v8, :cond_2

    .line 535
    iget-object v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 536
    iget-object v4, p0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;->this$0:Lcom/zte/engineer/TouchPadTestFiveSeven;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 539
    :cond_2
    const-string v4, "Emode.TouchPadTestFiveSeven"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
