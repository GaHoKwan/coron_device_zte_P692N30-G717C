.class public Lcom/mediatek/ngin3d/BitmapText;
.super Lcom/mediatek/ngin3d/Container;
.source "BitmapText.java"


# static fields
.field private static sDefaultBmFont:Lcom/mediatek/ngin3d/BitmapFont;


# instance fields
.field private mAnchorPoint:Lcom/mediatek/ngin3d/Point;

.field private final mCharImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mFont:Lcom/mediatek/ngin3d/BitmapFont;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/BitmapText;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/ngin3d/BitmapText;->sDefaultBmFont:Lcom/mediatek/ngin3d/BitmapFont;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/BitmapText;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/BitmapFont;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mediatek/ngin3d/BitmapFont;)V
    .locals 2
    .parameter "text"
    .parameter "font"

    .prologue
    const/high16 v1, 0x3f00

    .line 78
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Container;-><init>()V

    .line 53
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "No bitmap font is specified."

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    .line 85
    invoke-direct {p0}, Lcom/mediatek/ngin3d/BitmapText;->setupCharImages()V

    .line 86
    return-void
.end method

.method private applyAnchorPoint(II)V
    .locals 9
    .parameter "textWidth"
    .parameter "textHeight"

    .prologue
    const/4 v8, 0x0

    .line 204
    iget-object v5, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    if-nez v5, :cond_1

    .line 221
    :cond_0
    return-void

    .line 208
    :cond_1
    int-to-float v5, p1

    iget-object v6, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    iget v6, v6, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float v2, v5, v6

    .line 209
    .local v2, newOriginX:F
    int-to-float v5, p2

    iget-object v6, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    iget v6, v6, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float v3, v5, v6

    .line 211
    .local v3, newOriginY:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Image;

    .line 216
    .local v0, charImage:Lcom/mediatek/ngin3d/Image;
    new-instance v5, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v5, v8, v8}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v5}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 218
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getPosition()Lcom/mediatek/ngin3d/Point;

    move-result-object v4

    .line 219
    .local v4, oldPos:Lcom/mediatek/ngin3d/Point;
    new-instance v5, Lcom/mediatek/ngin3d/Point;

    iget v6, v4, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v6, v2

    const/high16 v7, 0x4140

    sub-float/2addr v6, v7

    iget v7, v4, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v7, v3

    invoke-direct {v5, v6, v7}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v5}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDefaultFont()Lcom/mediatek/ngin3d/BitmapFont;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/mediatek/ngin3d/BitmapText;->sDefaultBmFont:Lcom/mediatek/ngin3d/BitmapFont;

    return-object v0
.end method

.method public static setDefaultFont(Lcom/mediatek/ngin3d/BitmapFont;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 94
    sput-object p0, Lcom/mediatek/ngin3d/BitmapText;->sDefaultBmFont:Lcom/mediatek/ngin3d/BitmapFont;

    .line 95
    return-void
.end method

.method private setupCharImages()V
    .locals 12

    .prologue
    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, textWidth:I
    const/4 v5, 0x0

    .line 156
    .local v5, textHeight:I
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Container;->removeAllChildren()V

    .line 158
    const/4 v7, 0x0

    .line 159
    .local v7, xAdv:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 161
    new-instance v4, Lcom/mediatek/ngin3d/Box;

    invoke-direct {v4}, Lcom/mediatek/ngin3d/Box;-><init>()V

    .line 162
    .local v4, rect:Lcom/mediatek/ngin3d/Box;
    new-instance v2, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v2}, Lcom/mediatek/ngin3d/Dimension;-><init>()V

    .line 164
    .local v2, dim:Lcom/mediatek/ngin3d/Dimension;
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    iget-object v10, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/BitmapFont;->getCharInfo(C)Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;

    move-result-object v1

    .line 166
    .local v1, charInfo:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    iget v9, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->height:I

    if-le v9, v5, :cond_0

    .line 167
    iget v5, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->height:I

    .line 169
    :cond_0
    iget v9, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    add-int/2addr v9, v6

    iget v10, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->xOffset:I

    add-int v6, v9, v10

    .line 171
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    invoke-virtual {v9, v1, v4}, Lcom/mediatek/ngin3d/BitmapFont;->getCharRect(Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;Lcom/mediatek/ngin3d/Box;)V

    .line 173
    iget v9, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->height:I

    int-to-float v9, v9

    iput v9, v2, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 174
    iget v9, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    int-to-float v9, v9

    iput v9, v2, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 177
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 178
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/BitmapFont;->createCharImage()Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    .line 180
    .local v0, charImage:Lcom/mediatek/ngin3d/Image;
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/mediatek/ngin3d/Actor;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {p0, v9}, Lcom/mediatek/ngin3d/Container;->addChild([Lcom/mediatek/ngin3d/Actor;)V

    .line 187
    :goto_1
    iget v8, v4, Lcom/mediatek/ngin3d/Box;->y1:F

    .line 188
    .local v8, y1:F
    iget v9, v4, Lcom/mediatek/ngin3d/Box;->y2:F

    iput v9, v4, Lcom/mediatek/ngin3d/Box;->y1:F

    .line 189
    iput v8, v4, Lcom/mediatek/ngin3d/Box;->y2:F

    .line 191
    invoke-virtual {v0, v4}, Lcom/mediatek/ngin3d/Plane;->setSourceRect(Lcom/mediatek/ngin3d/Box;)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/mediatek/ngin3d/Plane;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    .line 193
    new-instance v9, Lcom/mediatek/ngin3d/Point;

    int-to-float v10, v7

    iget v11, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->yOffset:I

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v0, v9}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 195
    iget v9, v1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->xAdvance:I

    add-int/2addr v7, v9

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v0           #charImage:Lcom/mediatek/ngin3d/Image;
    .end local v8           #y1:F
    :cond_1
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Image;

    .line 184
    .restart local v0       #charImage:Lcom/mediatek/ngin3d/Image;
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    invoke-virtual {v9, v0}, Lcom/mediatek/ngin3d/BitmapFont;->setupCharImage(Lcom/mediatek/ngin3d/Image;)V

    goto :goto_1

    .line 198
    .end local v0           #charImage:Lcom/mediatek/ngin3d/Image;
    .end local v1           #charInfo:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    .end local v2           #dim:Lcom/mediatek/ngin3d/Dimension;
    .end local v4           #rect:Lcom/mediatek/ngin3d/Box;
    :cond_2
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/mediatek/ngin3d/BitmapText;->mCharImages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 200
    invoke-direct {p0, v6, v5}, Lcom/mediatek/ngin3d/BitmapText;->applyAnchorPoint(II)V

    .line 201
    return-void
.end method


# virtual methods
.method public getAnchorPoint()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getFont()Lcom/mediatek/ngin3d/BitmapFont;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V
    .locals 3
    .parameter "anchorPoint"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 231
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/mediatek/ngin3d/Point;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 234
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y must be >= 0 and <= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    iput-object p1, p0, Lcom/mediatek/ngin3d/BitmapText;->mAnchorPoint:Lcom/mediatek/ngin3d/Point;

    .line 237
    return-void
.end method

.method public setFont(Lcom/mediatek/ngin3d/BitmapFont;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/BitmapFont;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iput-object p1, p0, Lcom/mediatek/ngin3d/BitmapText;->mFont:Lcom/mediatek/ngin3d/BitmapFont;

    .line 146
    invoke-direct {p0}, Lcom/mediatek/ngin3d/BitmapText;->setupCharImages()V

    .line 148
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lcom/mediatek/ngin3d/BitmapText;->mText:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/mediatek/ngin3d/BitmapText;->setupCharImages()V

    .line 127
    :cond_0
    return-void
.end method
