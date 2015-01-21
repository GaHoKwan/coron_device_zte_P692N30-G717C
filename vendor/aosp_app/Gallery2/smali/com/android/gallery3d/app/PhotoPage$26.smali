.class Lcom/android/gallery3d/app/PhotoPage$26;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->addShareSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 3196
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$26;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .parameter "source"
    .parameter "intent"

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$26;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->tryToShareAsVideo(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/PhotoPage;->access$5700(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V

    .line 3199
    invoke-static {p2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->makeShareProviderIgnorAction(Landroid/content/Intent;)V

    .line 3200
    const/4 v0, 0x1

    return v0
.end method
