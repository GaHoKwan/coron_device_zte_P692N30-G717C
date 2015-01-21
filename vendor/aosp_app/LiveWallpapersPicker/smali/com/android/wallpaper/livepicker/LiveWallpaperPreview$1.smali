.class Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;
.super Ljava/lang/Object;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->finishIfStorageLow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 140
    return-void
.end method
