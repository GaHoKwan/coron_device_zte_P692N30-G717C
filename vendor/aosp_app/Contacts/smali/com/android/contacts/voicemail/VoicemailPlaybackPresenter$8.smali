.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$8;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$8;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 888
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mBluetoothA2dpServiceListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$8;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$3202(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 890
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 894
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mBluetoothA2dpServiceListener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$8;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$3202(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 896
    return-void
.end method
