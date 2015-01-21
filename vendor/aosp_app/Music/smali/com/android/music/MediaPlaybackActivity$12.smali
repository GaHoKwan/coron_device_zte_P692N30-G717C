.class Lcom/android/music/MediaPlaybackActivity$12;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1752
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1818
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1754
    :pswitch_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2100(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1755
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2100(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0

    .line 1759
    :pswitch_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    .line 1760
    .local v1, next:J
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 1766
    .end local v1           #next:J
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070058

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070059

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07005a

    new-instance v5, Lcom/android/music/MediaPlaybackActivity$12$1;

    invoke-direct {v5, p0}, Lcom/android/music/MediaPlaybackActivity$12$1;-><init>(Lcom/android/music/MediaPlaybackActivity$12;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1781
    :pswitch_4
    const-string v3, "MediaPlayback"

    const-string v4, "Next Handle"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1785
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1786
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1788
    :try_start_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1789
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v4, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :goto_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1794
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "MediaPlayback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1798
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_5
    const-string v3, "MediaPlayback"

    const-string v4, "Prev Handle"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1802
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1803
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1805
    :try_start_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v4, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 1806
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->prev()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1810
    :goto_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1811
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 1807
    :catch_1
    move-exception v0

    .line 1808
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "MediaPlayback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
