.class Lcom/android/gallery3d/app/MoviePlayer$18;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showDialog2Disp([Ljava/lang/String;I[Ljava/lang/Integer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$18;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$18;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v0

    #calls: Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->access$3900(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    .line 1799
    return-void
.end method
