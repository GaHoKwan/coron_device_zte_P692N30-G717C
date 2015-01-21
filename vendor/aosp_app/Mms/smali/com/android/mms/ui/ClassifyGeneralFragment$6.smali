.class Lcom/android/mms/ui/ClassifyGeneralFragment$6;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->pickChatWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

.field final synthetic val$wallpaperChooser:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 672
    :goto_0
    return-void

    .line 648
    :pswitch_0
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "system begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->pickSysWallpaper()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1100(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromGallery()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1200(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromCam()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1300(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 661
    :pswitch_3
    new-instance v0, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$6$1;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment$6;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
