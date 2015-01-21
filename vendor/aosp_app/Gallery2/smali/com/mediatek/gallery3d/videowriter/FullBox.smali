.class public Lcom/mediatek/gallery3d/videowriter/FullBox;
.super Lcom/mediatek/gallery3d/videowriter/Box;
.source "FullBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field public static mCreateTime:I

.field public static mFps:F

.field public static mFrameNumber:I

.field public static mHeight:I

.field public static mMediaTimeScale:I

.field private static mTimeScale:I

.field public static mWidth:I


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:S

.field public mIsAudio:Z

.field public mTrackID:I

.field private mVersion:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Gallery2/FullBox"

    sput-object v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFrameNumber:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFps:F

    .line 16
    const/16 v0, 0x3e8

    sput v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTimeScale:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "type"
    .parameter "version"
    .parameter "flags"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videowriter/Box;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTrackID:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mIsAudio:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    .line 26
    int-to-short v0, p2

    iput-short v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mVersion:S

    .line 27
    int-to-short v0, p3

    iput-short v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFlags:S

    .line 28
    return-void
.end method


# virtual methods
.method public varargs add([I)V
    .locals 2
    .parameter "data"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;-><init>(Lcom/mediatek/gallery3d/videowriter/FullBox;[I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public write()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-super {p0}, Lcom/mediatek/gallery3d/videowriter/Box;->write()V

    .line 36
    iget-short v4, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mVersion:S

    invoke-static {v4}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 37
    iget-short v4, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFlags:S

    invoke-static {v4}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 38
    iget-object v4, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 43
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/mediatek/gallery3d/videowriter/FullBox;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not find method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeDrefBox()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 137
    return-void
.end method

.method public writeHdlrBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 121
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mIsAudio:Z

    if-eqz v0, :cond_0

    const-string v0, "soun"

    :goto_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 122
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 123
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 124
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 125
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mIsAudio:Z

    if-eqz v0, :cond_1

    const-string v0, "SoundHandle "

    :goto_1
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 126
    return-void

    .line 121
    :cond_0
    const-string v0, "vide"

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "VideoHandle "

    goto :goto_1
.end method

.method public writeMdhdBox()V
    .locals 2

    .prologue
    .line 112
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 113
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 114
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mMediaTimeScale:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 115
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFrameNumber:I

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mMediaTimeScale:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFps:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 117
    return-void
.end method

.method public writeMvhdBox()V
    .locals 4

    .prologue
    const/high16 v3, 0x1

    const/4 v2, 0x0

    .line 50
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 51
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 52
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTimeScale:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 53
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFrameNumber:I

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTimeScale:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFps:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 54
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 55
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 56
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 57
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 58
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 60
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 61
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 62
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 63
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 64
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 65
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 66
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 67
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 68
    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 70
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 71
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 72
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 73
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 74
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 75
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 77
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 78
    return-void
.end method

.method public writeStcoBox()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    .line 175
    .local v0, entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->write()V

    goto :goto_0

    .line 177
    .end local v0           #entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    :cond_0
    return-void
.end method

.method public writeStscBox()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 167
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    .line 168
    .local v0, entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->write()V

    goto :goto_0

    .line 170
    .end local v0           #entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    :cond_0
    return-void
.end method

.method public writeStsdBox()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 141
    return-void
.end method

.method public writeStssBox()V
    .locals 3

    .prologue
    .line 151
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 152
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    .line 153
    .local v0, entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->write()V

    goto :goto_0

    .line 155
    .end local v0           #entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    :cond_0
    return-void
.end method

.method public writeStszBox()V
    .locals 3

    .prologue
    .line 158
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    .line 161
    .local v0, entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->write()V

    goto :goto_0

    .line 163
    .end local v0           #entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    :cond_0
    return-void
.end method

.method public writeSttsBox()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 145
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;

    .line 146
    .local v0, entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;->write()V

    goto :goto_0

    .line 148
    .end local v0           #entries:Lcom/mediatek/gallery3d/videowriter/FullBox$Entries;
    :cond_0
    return-void
.end method

.method public writeTkhdBox()V
    .locals 4

    .prologue
    const/high16 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 82
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mCreateTime:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 83
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTrackID:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 84
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 85
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFrameNumber:I

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mTimeScale:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/mediatek/gallery3d/videowriter/FullBox;->mFps:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 86
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 87
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 88
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 89
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mIsAudio:Z

    if-eqz v0, :cond_0

    .line 91
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 95
    :goto_0
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 97
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 98
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 99
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 100
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 101
    invoke-static {v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 102
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 103
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 104
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 105
    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 107
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mWidth:I

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 108
    sget v0, Lcom/mediatek/gallery3d/videowriter/FullBox;->mHeight:I

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 109
    return-void

    .line 93
    :cond_0
    invoke-static {v2}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    goto :goto_0
.end method

.method public writeVmhdBox()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 130
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 131
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 132
    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt16(S)V

    .line 133
    return-void
.end method
