.class Lcom/android/galaxy4/PreviewStubActivity$1;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/galaxy4/PreviewStubActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/galaxy4/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/android/galaxy4/PreviewStubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/galaxy4/PreviewStubActivity$1;->this$0:Lcom/android/galaxy4/PreviewStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/galaxy4/PreviewStubActivity$1;->this$0:Lcom/android/galaxy4/PreviewStubActivity;

    #getter for: Lcom/android/galaxy4/PreviewStubActivity;->mWallpaperConnection:Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/android/galaxy4/PreviewStubActivity;->access$000(Lcom/android/galaxy4/PreviewStubActivity;)Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "PreviewStubActivity"

    const-string v1, "onAttachedToWindow() mWallpaperConnection.connect() fail, should not enter..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/galaxy4/PreviewStubActivity$1;->this$0:Lcom/android/galaxy4/PreviewStubActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/galaxy4/PreviewStubActivity;->mWallpaperConnection:Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0, v1}, Lcom/android/galaxy4/PreviewStubActivity;->access$002(Lcom/android/galaxy4/PreviewStubActivity;Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;)Lcom/android/galaxy4/PreviewStubActivity$WallpaperConnection;

    .line 126
    :cond_0
    return-void
.end method
