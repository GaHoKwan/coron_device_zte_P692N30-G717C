.class public Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;
.super Lcom/android/contacts/ext/DialPadExtension;
.source "DialPadOP09Extension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$1;,
        Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CDMA_INFO_SPECIFICATION_ACTION:Ljava/lang/String; = "com.mediatek.phone.plugin.CdmaInfoSpecification"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final ID_NAME_DIALPAD_ADDITIONAL_BUTTONS:Ljava/lang/String; = "dialpadAdditionalButtons"

.field private static final ID_NAME_IP_DIAL_OPTION_MENU:Ljava/lang/String; = "menu_ip_dial"

.field private static final PRL_VERSION_DISPLAY:Ljava/lang/String; = "*#0000#"

.field private static final TAG:Ljava/lang/String; = "DialPadOP09Extension"


# instance fields
.field private mDialButtonLeft:Landroid/widget/ImageButton;

.field private mDialButtonRight:Landroid/widget/ImageButton;

.field private mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

.field private mDigits:Landroid/widget/EditText;

.field private mFragment:Landroid/app/Fragment;

.field private mPluginContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSendSMSButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pluginContext"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/ext/DialPadExtension;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->updateDialButtons()V

    return-void
.end method

.method private createMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const/high16 v0, 0x7f0b

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 153
    const v0, 0x7f0b0001

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 154
    const v0, 0x7f0b0013

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 155
    return-void
.end method

.method private dialpadChooserVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadChooser:Landroid/widget/ListView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 304
    :goto_0
    return v2

    .line 277
    :sswitch_0
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 278
    .local v0, intentSlot1:Landroid/content/Intent;
    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v0           #intentSlot1:Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 284
    .local v1, intentSlot2:Landroid/content/Intent;
    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    .end local v1           #intentSlot2:Landroid/content/Intent;
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 291
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ct_e_surfing_dialing_key"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 296
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ct_e_surfing_dialing_key"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_0
        0x7f0b0001 -> :sswitch_1
        0x7f0b0013 -> :sswitch_2
    .end sparse-switch
.end method

.method private isDigitsEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 584
    const-string v0, "DialPadOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method private onDialButtonPressed(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialButtonPressed intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

    invoke-interface {v0}, Lcom/android/contacts/ext/IDialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

    invoke-interface {v0, p1}, Lcom/android/contacts/ext/IDialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 408
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDigits.getText() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 363
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 364
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 369
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 364
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 366
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v3}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 376
    const/4 v2, 0x0

    .line 378
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 379
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 380
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 385
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "phone.isOffhook() failed"

    invoke-static {v3}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 159
    .local v2, resource:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, packageName:Ljava/lang/String;
    const-string v5, "menu_ip_dial"

    const-string v8, "id"

    invoke-virtual {v2, v5, v8, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    .local v0, ipDialMenuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    :cond_0
    const v5, 0x7f0b0013

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "ct_e_surfing_dialing_key"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 169
    const/high16 v5, 0x7f0b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 170
    .local v3, slot1IpDialMenuItem:Landroid/view/MenuItem;
    const v5, 0x7f0b0001

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 172
    .local v4, slot2IpDialMenuItem:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->dialpadChooserVisible()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->isDigitsEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    :cond_1
    if-eqz v3, :cond_2

    .line 174
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    :cond_2
    if-eqz v4, :cond_3

    .line 177
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    :cond_3
    :goto_1
    return-void

    .end local v3           #slot1IpDialMenuItem:Landroid/view/MenuItem;
    .end local v4           #slot2IpDialMenuItem:Landroid/view/MenuItem;
    :cond_4
    move v5, v7

    .line 166
    goto :goto_0

    .line 182
    .restart local v3       #slot1IpDialMenuItem:Landroid/view/MenuItem;
    .restart local v4       #slot2IpDialMenuItem:Landroid/view/MenuItem;
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 183
    if-eqz v3, :cond_6

    .line 184
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :cond_6
    if-eqz v4, :cond_3

    .line 187
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 189
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v5

    if-ne v6, v5, :cond_e

    .line 190
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isSimInsert(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 191
    if-eqz v3, :cond_9

    .line 192
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_8

    move v6, v7

    :cond_8
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :cond_9
    if-eqz v4, :cond_3

    .line 196
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 198
    :cond_a
    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isSimInsert(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 200
    if-eqz v3, :cond_b

    .line 201
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 203
    :cond_b
    if-eqz v4, :cond_3

    .line 204
    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_2
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_c
    move v7, v6

    goto :goto_2

    .line 208
    :cond_d
    const-string v5, "both slot 1 and slot 2 do not insert sim"

    invoke-static {v5}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_e
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 214
    if-eqz v3, :cond_f

    .line 215
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    :cond_f
    if-eqz v4, :cond_3

    .line 218
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 220
    :cond_10
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_14

    .line 222
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 223
    if-eqz v3, :cond_11

    .line 224
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    :cond_11
    if-eqz v4, :cond_3

    .line 227
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 230
    :cond_12
    if-eqz v3, :cond_13

    .line 231
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    :cond_13
    if-eqz v4, :cond_3

    .line 234
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 237
    :cond_14
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 239
    invoke-static {v6}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 240
    if-eqz v3, :cond_15

    .line 241
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    :cond_15
    if-eqz v4, :cond_3

    .line 244
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 247
    :cond_16
    if-eqz v3, :cond_17

    .line 248
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    :cond_17
    if-eqz v4, :cond_3

    .line 251
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 255
    :cond_18
    if-eqz v3, :cond_19

    .line 256
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    :cond_19
    if-eqz v4, :cond_3

    .line 259
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private showPRLVersionSetting(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "slot"

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.plugin.CdmaInfoSpecification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method private updateDialButtons()V
    .locals 13

    .prologue
    const v12, 0x7f0200b8

    const v11, 0x7f0200b6

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 420
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 421
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    invoke-virtual {v4}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->hideRightShowLeftDialButton()V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v4

    if-ne v8, v4, :cond_3

    .line 425
    invoke-static {v9}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isSimInsert(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    invoke-virtual {v4}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->hideRightShowLeftDialButton()V

    goto :goto_0

    .line 429
    :cond_2
    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isSimInsert(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    invoke-virtual {v4}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->hideLeftShowRightDialButton()V

    goto :goto_0

    .line 437
    :cond_3
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    invoke-virtual {v4}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->showLeftRightDialButton()V

    .line 439
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 442
    .local v0, defaultSim:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_b

    .line 444
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v2

    .line 445
    .local v2, slot:I
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    if-gez v2, :cond_5

    .line 446
    const-string v4, "slot < 0"

    invoke-static {v4}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_5
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_7

    .line 451
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 452
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v9}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v4

    if-ne v10, v4, :cond_8

    .line 453
    const/4 v2, 0x0

    .line 454
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v4

    int-to-long v0, v4

    .line 459
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change the voice call setting to slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 464
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    :cond_7
    if-nez v2, :cond_9

    .line 465
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 455
    .restart local v3       #telephony:Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual {v3, v8}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v4

    if-ne v10, v4, :cond_6

    .line 456
    const/4 v2, 0x1

    .line 457
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v4

    int-to-long v0, v4

    goto :goto_1

    .line 469
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    :cond_9
    if-ne v8, v2, :cond_a

    .line 470
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v4, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 475
    :cond_a
    const-string v4, "slot is not 0 or 1, maybe it\'s triple sim version or above, please check it"

    invoke-static {v4}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    .end local v2           #slot:I
    :cond_b
    const-string v4, "default sim <= 0, is it always ask? CT version does not have this setting!"

    invoke-static {v4}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateNumberButtons(Landroid/view/View;)V
    .locals 17
    .parameter "fragmentView"

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 484
    .local v14, resource:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 486
    .local v13, packageName:Ljava/lang/String;
    const-string v15, "one"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 487
    .local v5, buttonOne:Landroid/widget/ImageButton;
    if-eqz v5, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02004f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    :cond_0
    const-string v15, "two"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 492
    .local v11, buttonTwo:Landroid/widget/ImageButton;
    if-eqz v11, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020050

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    :cond_1
    const-string v15, "three"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 497
    .local v10, buttonThree:Landroid/widget/ImageButton;
    if-eqz v10, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020051

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    :cond_2
    const-string v15, "four"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 502
    .local v3, buttonFour:Landroid/widget/ImageButton;
    if-eqz v3, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020052

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_3
    const-string v15, "five"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 507
    .local v2, buttonFive:Landroid/widget/ImageButton;
    if-eqz v2, :cond_4

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020053

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    :cond_4
    const-string v15, "six"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 512
    .local v8, buttonSix:Landroid/widget/ImageButton;
    if-eqz v8, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020054

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_5
    const-string v15, "seven"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 517
    .local v7, buttonSeven:Landroid/widget/ImageButton;
    if-eqz v7, :cond_6

    .line 518
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020055

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :cond_6
    const-string v15, "eight"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 522
    .local v1, buttonEight:Landroid/widget/ImageButton;
    if-eqz v1, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020056

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_7
    const-string v15, "nine"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 527
    .local v4, buttonNine:Landroid/widget/ImageButton;
    if-eqz v4, :cond_8

    .line 528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020057

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :cond_8
    const-string v15, "zero"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 532
    .local v12, buttonZero:Landroid/widget/ImageButton;
    if-eqz v12, :cond_9

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02004e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_9
    const-string v15, "pound"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 537
    .local v6, buttonPound:Landroid/widget/ImageButton;
    if-eqz v6, :cond_a

    .line 538
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020058

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :cond_a
    const-string v15, "star"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 542
    .local v9, buttonStar:Landroid/widget/ImageButton;
    if-eqz v9, :cond_b

    .line 543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020059

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_b
    return-void
.end method


# virtual methods
.method public constructPopupMenu(Landroid/widget/PopupMenu;Landroid/view/View;Landroid/view/Menu;)V
    .locals 0
    .parameter "popupMenu"
    .parameter "anchorView"
    .parameter "menu"

    .prologue
    .line 147
    invoke-direct {p0, p3}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->createMenu(Landroid/view/Menu;)V

    .line 148
    invoke-direct {p0, p3}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->setupMenu(Landroid/view/Menu;)V

    .line 149
    return-void
.end method

.method public handleChars(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "commd"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 561
    const-string v3, "*#0000#"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 563
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 564
    invoke-direct {p0, p1, v2}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->showPRLVersionSetting(Landroid/content/Context;I)V

    .line 574
    .end local v0           #telephony:Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .line 566
    .restart local v0       #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 567
    invoke-direct {p0, p1, v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->showPRLVersionSetting(Landroid/content/Context;I)V

    goto :goto_0

    .line 570
    :cond_1
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->showPRLVersionSetting(Landroid/content/Context;I)V

    goto :goto_0

    .end local v0           #telephony:Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v2

    .line 574
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    const-string v1, "click dialButtonLeft button"

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 312
    invoke-static {v2}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getCallIntentWithSlot(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->onDialButtonPressed(Landroid/content/Intent;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->onDialButtonPressed(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v1, "click dialButtonRight button"

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getCallIntentWithSlot(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->onDialButtonPressed(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v1, "click send sms button"

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getSMSIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "DialPadOP09Extension"

    const-string v2, "No activity found "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x7f0b000d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/app/Fragment;Lcom/android/contacts/ext/IDialpadFragment;)V
    .locals 3
    .parameter "fragment"
    .parameter "dialpadFragment"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    .line 73
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadFragment:Lcom/android/contacts/ext/IDialpadFragment;

    .line 75
    new-instance v1, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;-><init>(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$1;)V

    iput-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->createMenu(Landroid/view/Menu;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"
    .parameter "fragmentView"

    .prologue
    .line 83
    const-string v6, "onCreateView()"

    invoke-static {v6}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 85
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 86
    .local v5, resource:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "dialpadAdditionalButtons"

    const-string v7, "id"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    .local v0, dialpadAdditionalButtons:Landroid/widget/FrameLayout;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialpadAdditionalButtons = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_3

    move-object v6, p4

    .line 92
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 93
    .local v2, indexOfDialpadAdditionalButtons:I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, dialpadAdditionalButtonsLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object v6, p4

    .line 95
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 98
    .local v3, inflaterOfPlugin:Landroid/view/LayoutInflater;
    new-instance v6, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    iget-object v7, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mPluginContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    .line 99
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    const-string v7, "dialpadAdditionalButtons"

    const-string v8, "id"

    invoke-virtual {v5, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->setId(I)V

    .line 101
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    const v7, 0x7f0b000d

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    .line 102
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 103
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    const v7, 0x7f0b000e

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    .line 106
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    const v7, 0x7f0b000f

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mSendSMSButton:Landroid/widget/ImageButton;

    .line 110
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mSendSMSButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    .line 111
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mSendSMSButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_2
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    if-eqz v6, :cond_3

    move-object v6, p4

    .line 114
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadAdditionalButtons:Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;

    invoke-virtual {v6, v7, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .end local v1           #dialpadAdditionalButtonsLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #indexOfDialpadAdditionalButtons:I
    .end local v3           #inflaterOfPlugin:Landroid/view/LayoutInflater;
    :cond_3
    const-string v6, "digits"

    const-string v7, "id"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDigits:Landroid/widget/EditText;

    .line 119
    const-string v6, "dialpadChooser"

    const-string v7, "id"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialpadChooser:Landroid/widget/ListView;

    .line 121
    invoke-direct {p0, p4}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->updateNumberButtons(Landroid/view/View;)V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->updateDialButtons()V

    .line 123
    return-object p4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    .line 131
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->handleMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->handleMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->setupMenu(Landroid/view/Menu;)V

    .line 144
    :cond_0
    return-void
.end method

.method public updateDialAndDeleteButtonEnabledState(Ljava/lang/String;)Z
    .locals 4
    .parameter "lastNumberDialed"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 353
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonLeft:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->mDialButtonRight:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 349
    goto :goto_1

    :cond_5
    move v2, v1

    .line 350
    goto :goto_2
.end method
