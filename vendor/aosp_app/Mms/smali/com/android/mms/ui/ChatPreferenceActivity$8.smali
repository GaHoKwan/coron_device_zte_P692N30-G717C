.class Lcom/android/mms/ui/ChatPreferenceActivity$8;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->pickChatWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

.field final synthetic val$wallpaperChooser:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 689
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 714
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->pickSysWallpaper()V
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$800(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromGallery()V
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$900(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromCam()V
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1000(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    .line 700
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 703
    :pswitch_3
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$8$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$8$1;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity$8;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
