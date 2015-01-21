.class public interface abstract Lcom/mediatek/mms/ext/IMmsCompose;
.super Ljava/lang/Object;
.source "IMmsCompose.java"


# static fields
.field public static final CAPTURE_PIC_AT_TEMP_FILE:I = 0x1

.field public static final CAPTURE_PIC_NORMAL:I = 0x0

.field public static final MSG_LIST_SHOW_MSGITEM_DETAIL:I = 0xe10

.field public static final NUMBERS_SEPARATOR_COLON:Ljava/lang/String; = ":"

.field public static final NUMBERS_SEPARATOR_COMMA:Ljava/lang/String; = ","

.field public static final NUMBERS_SEPARATOR_SIMCOLON:Ljava/lang/String; = ";"

.field public static final SELECTION_CONTACT_RESULT:Ljava/lang/String; = "contactId"

.field public static final USING_COLON:Ljava/lang/String; = "USE_COLON"


# virtual methods
.method public abstract addAttachmentViewSendButton(Landroid/widget/LinearLayout;)Z
.end method

.method public abstract addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method

.method public abstract addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Ljava/lang/CharSequence;)V
.end method

.method public abstract addSendButtonLayout(Landroid/widget/LinearLayout;)Z
.end method

.method public abstract addSplitMessageContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/app/Activity;JI)V
.end method

.method public abstract addSplitThreadOptionMenu(Landroid/view/Menu;Landroid/app/Activity;J)V
.end method

.method public abstract configSubjectEditor(Landroid/widget/EditText;)V
.end method

.method public abstract deleteMassTextMsg(JJ)Z
.end method

.method public abstract enableDRWarningDialog(Landroid/content/Context;ZI)V
.end method

.method public abstract getCapturePicMode()I
.end method

.method public abstract getConverationUri(Landroid/net/Uri;J)Landroid/net/Uri;
.end method

.method public abstract getNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNumbersFromIntent(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract getSendParameter(Landroid/os/Message;I)I
.end method

.method public abstract getSmsMessageAndSaveToSim([Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJII)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJII)I"
        }
    .end annotation
.end method

.method public abstract hideCTButtonPanel()Z
.end method

.method public abstract hideCtSendPanel()Z
.end method

.method public abstract init(Lcom/mediatek/mms/ext/IMmsComposeHost;)V
.end method

.method public abstract initCTSendButton()Z
.end method

.method public abstract isAddMmsUrlToBookMark()Z
.end method

.method public abstract isAppendSender()Z
.end method

.method public abstract isDualSendButtonEnable()Z
.end method

.method public abstract isEnableLengthRequiredMmsToSms()Z
.end method

.method public abstract isMassTextEnable()Z
.end method

.method public abstract isMultiCompose()Z
.end method

.method public abstract lockMassTextMsg(Landroid/content/Context;JJZ)Z
.end method

.method public abstract needConfirmMmsToSms()Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract setCTSendButtonType()Z
.end method

.method public abstract setConfirmMmsToSms(Z)V
.end method

.method public abstract showCTButtonPanel()Z
.end method

.method public abstract showDisableDRDialog(Landroid/app/Activity;I)V
.end method

.method public abstract showMassTextMsgDetail(Landroid/content/Context;J)Z
.end method

.method public abstract updateCTSendButtonStatue(ZZ)Z
.end method

.method public abstract updateCTTextCounter(II)Z
.end method
