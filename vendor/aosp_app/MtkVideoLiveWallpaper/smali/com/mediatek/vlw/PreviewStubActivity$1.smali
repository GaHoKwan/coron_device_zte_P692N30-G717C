.class Lcom/mediatek/vlw/PreviewStubActivity$1;
.super Ljava/lang/Object;
.source "PreviewStubActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/PreviewStubActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/PreviewStubActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/PreviewStubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mediatek/vlw/PreviewStubActivity$1;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$1;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    #getter for: Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0}, Lcom/mediatek/vlw/PreviewStubActivity;->access$000(Lcom/mediatek/vlw/PreviewStubActivity;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/vlw/PreviewStubActivity$1;->this$0:Lcom/mediatek/vlw/PreviewStubActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/vlw/PreviewStubActivity;->mWallpaperConnection:Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;
    invoke-static {v0, v1}, Lcom/mediatek/vlw/PreviewStubActivity;->access$002(Lcom/mediatek/vlw/PreviewStubActivity;Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;)Lcom/mediatek/vlw/PreviewStubActivity$WallpaperConnection;

    .line 171
    :cond_0
    return-void
.end method
