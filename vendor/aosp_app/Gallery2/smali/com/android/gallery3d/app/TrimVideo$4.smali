.class Lcom/android/gallery3d/app/TrimVideo$4;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TrimVideo;->setSaveClickable(Z)V

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/gallery3d/app/TrimVideo;->access$502(Z)Z

    .line 189
    const-string v0, "Gallery2/TrimVideo"

    const-string v1, "mSaveVideoTextView onclick"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #calls: Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/TrimVideo;->access$600(Lcom/android/gallery3d/app/TrimVideo;)V

    .line 191
    return-void
.end method
