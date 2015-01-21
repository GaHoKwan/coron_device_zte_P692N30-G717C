.class Lcom/android/musicvis/PreviewStubActivity$1;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicvis/PreviewStubActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicvis/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/android/musicvis/PreviewStubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/musicvis/PreviewStubActivity$1;->this$0:Lcom/android/musicvis/PreviewStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/musicvis/PreviewStubActivity$1;->this$0:Lcom/android/musicvis/PreviewStubActivity;

    #getter for: Lcom/android/musicvis/PreviewStubActivity;->mWallpaperConnection:Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/android/musicvis/PreviewStubActivity;->access$000(Lcom/android/musicvis/PreviewStubActivity;)Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "PreviewStubActivity"

    const-string v1, "onAttachedToWindow() mWallpaperConnection.connect() fail, should not enter..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/musicvis/PreviewStubActivity$1;->this$0:Lcom/android/musicvis/PreviewStubActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/musicvis/PreviewStubActivity;->mWallpaperConnection:Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0, v1}, Lcom/android/musicvis/PreviewStubActivity;->access$002(Lcom/android/musicvis/PreviewStubActivity;Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;)Lcom/android/musicvis/PreviewStubActivity$WallpaperConnection;

    .line 124
    :cond_0
    return-void
.end method
