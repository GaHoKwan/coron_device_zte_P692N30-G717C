.class Lcom/android/gallery3d/app/GalleryAppImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;->registerStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryAppImpl;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$1;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$1;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #calls: Lcom/android/gallery3d/app/GalleryAppImpl;->handleStorageIntentAsync(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$000(Lcom/android/gallery3d/app/GalleryAppImpl;Landroid/content/Intent;)V

    .line 158
    return-void
.end method
