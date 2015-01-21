.class public Lcom/mediatek/gallery3d/conshots/ContainerSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "ContainerSource.java"


# static fields
.field public static final CONSHOTS_GROUP:Ljava/lang/String; = "/container/conshot"

.field private static final CONTAINER_CONSHOT_SET:I = 0x0

.field private static final CONTAINER_MOTION_SET:I = 0x1

.field public static final MOTION_GROUP:Ljava/lang/String; = "/container/motion"

.field private static final TAG:Ljava/lang/String; = "ContainerSource"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private subSegment1:Ljava/lang/String;

.field private subSegment2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 26
    const-string v0, "container"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 28
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 29
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/container/conshot/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/container/motion/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method private splitSegment(Ljava/lang/String;)V
    .locals 4
    .parameter "segment"

    .prologue
    .line 49
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, position:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment1:Ljava/lang/String;

    .line 51
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment2:Ljava/lang/String;

    .line 52
    const-string v1, "ContainerSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subSegment1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subSegment2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 35
    const-string v0, "ConShots"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContainerSource.createMediaObject, path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/conshots/ContainerSource;->splitSegment(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/mediatek/gallery3d/conshots/ConShotSet;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment2:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/conshots/ConShotSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)V

    .line 42
    :goto_0
    return-object v0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/conshots/ContainerSource;->splitSegment(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/mediatek/gallery3d/conshots/MotionSet;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment1:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerSource;->subSegment2:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mediatek/gallery3d/conshots/MotionSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
