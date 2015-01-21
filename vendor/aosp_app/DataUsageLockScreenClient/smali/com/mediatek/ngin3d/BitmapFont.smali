.class public Lcom/mediatek/ngin3d/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    }
.end annotation


# static fields
.field private static final CHAR_SPACE:C = ' '


# instance fields
.field private final mCharMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mResId:I

.field private final mResources:Landroid/content/res/Resources;

.field private mScaleH:I

.field private mWordWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .parameter "resources"
    .parameter "settingId"
    .parameter "resId"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/BitmapFont;->mCharMap:Ljava/util/HashMap;

    .line 71
    iput p3, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    .line 72
    iput-object p1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/BitmapFont;->initialize(Ljava/io/InputStream;)V

    .line 74
    return-void
.end method

.method private initialize(Ljava/io/InputStream;)V
    .locals 0
    .parameter "settingFile"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/BitmapFont;->parseFntFile(Ljava/io/InputStream;)V

    .line 93
    return-void
.end method

.method private parseFntFile(Ljava/io/InputStream;)V
    .locals 12
    .parameter "settingFile"

    .prologue
    const/4 v11, 0x4

    .line 134
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 138
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 140
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 205
    .local v2, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Error loading font file"

    invoke-direct {v9, v10, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v6}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 142
    .restart local v4       #line:Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, common:[Ljava/lang/String;
    array-length v9, v1

    if-ge v9, v11, :cond_1

    .line 144
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    :cond_1
    const/4 v9, 0x1

    aget-object v9, v1, v9

    const-string v10, "lineHeight="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 147
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 150
    :cond_2
    const/4 v9, 0x2

    aget-object v9, v1, v9

    const-string v10, "base="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 151
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    :cond_3
    const/4 v9, 0x4

    aget-object v9, v1, v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/mediatek/ngin3d/BitmapFont;->mScaleH:I

    .line 155
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 156
    if-nez v4, :cond_4

    .line 157
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    :cond_4
    const-string v9, " "

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, pages:[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v5, v9

    const-string v10, "file="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 161
    new-instance v9, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v10, "Invalid font file"

    invoke-direct {v9, v10}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 164
    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_6
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 168
    if-nez v4, :cond_8

    .line 207
    :cond_7
    invoke-static {v6}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    return-void

    .line 171
    :cond_8
    :try_start_3
    const-string v9, "kernings "

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 174
    const-string v9, "char "

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    new-instance v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;

    invoke-direct {v3}, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;-><init>()V

    .line 179
    .local v3, font:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, " "

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v8, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 181
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, tmpChar:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-char v0, v9

    .line 184
    .local v0, ch:C
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 185
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcX:I

    .line 186
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 187
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcY:I

    .line 188
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 189
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    .line 190
    iget v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    iget v10, p0, Lcom/mediatek/ngin3d/BitmapFont;->mWordWidth:I

    if-le v9, v10, :cond_9

    .line 191
    iget v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    iput v9, p0, Lcom/mediatek/ngin3d/BitmapFont;->mWordWidth:I

    .line 193
    :cond_9
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 194
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->height:I

    .line 195
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 196
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->xOffset:I

    .line 197
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 198
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->yOffset:I

    .line 199
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 200
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->xAdvance:I

    .line 202
    iget-object v9, p0, Lcom/mediatek/ngin3d/BitmapFont;->mCharMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public createCharImage()Lcom/mediatek/ngin3d/Image;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-ne p0, p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    instance-of v3, p1, Lcom/mediatek/ngin3d/BitmapFont;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 219
    check-cast v0, Lcom/mediatek/ngin3d/BitmapFont;

    .line 221
    .local v0, that:Lcom/mediatek/ngin3d/BitmapFont;
    iget v3, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    iget v4, v0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 222
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public getCharInfo(C)Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    .locals 3
    .parameter "ch"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mCharMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;

    .line 116
    .local v0, charInfo:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    if-nez v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mCharMap:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #charInfo:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    check-cast v0, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;

    .line 118
    .restart local v0       #charInfo:Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;
    if-nez v0, :cond_0

    .line 119
    new-instance v1, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v2, "Cannot find replacement character"

    invoke-direct {v1, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    return-object v0
.end method

.method public getCharRect(Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;Lcom/mediatek/ngin3d/Box;)V
    .locals 5
    .parameter "charInfo"
    .parameter "rect"

    .prologue
    .line 102
    iget v0, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mScaleH:I

    iget v2, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcY:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->width:I

    iget v3, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/ngin3d/BitmapFont;->mScaleH:I

    iget v4, p1, Lcom/mediatek/ngin3d/BitmapFont$CharacterInfo;->srcY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Box;->set(FFFF)V

    .line 103
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    .line 233
    .local v0, result:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 234
    return v0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setupCharImage(Lcom/mediatek/ngin3d/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/mediatek/ngin3d/BitmapFont;->mResId:I

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/ngin3d/Image;->setImageFromResource(Landroid/content/res/Resources;I)V

    .line 131
    return-void
.end method
