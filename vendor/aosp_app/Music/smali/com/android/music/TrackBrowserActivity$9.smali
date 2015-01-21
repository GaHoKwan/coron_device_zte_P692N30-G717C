.class Lcom/android/music/TrackBrowserActivity$9;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UpgradeAlbumArt()V
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    #calls: Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$2200(Lcom/android/music/TrackBrowserActivity;)V

    .line 2430
    return-void
.end method
