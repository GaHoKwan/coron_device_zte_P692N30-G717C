.class Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->showDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;->this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1924
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "showDetail.onDismiss()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;->this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->access$3900(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    .line 1927
    return-void
.end method
