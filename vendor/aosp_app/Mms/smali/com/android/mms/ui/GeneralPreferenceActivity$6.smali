.class Lcom/android/mms/ui/GeneralPreferenceActivity$6;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity;->pickChatWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

.field final synthetic val$wallpaperChooser:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

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
    .line 601
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 603
    :pswitch_0
    const-string v0, "GeneralPreferenceActivity"

    const-string v1, "system begin"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->pickSysWallpaper()V
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$1100(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 608
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromGallery()V
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$1200(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromCam()V
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$1300(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 616
    :pswitch_3
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity$6;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
