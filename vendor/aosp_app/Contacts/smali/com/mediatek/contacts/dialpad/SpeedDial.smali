.class public Lcom/mediatek/contacts/dialpad/SpeedDial;
.super Ljava/lang/Object;
.source "SpeedDial.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedDial"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    const-string v1, "speed_dial"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method


# virtual methods
.method protected clearSharedPreferences(ILjava/lang/String;)Z
    .locals 14
    .parameter "key"
    .parameter "number"

    .prologue
    .line 43
    const/4 v7, 0x0

    .line 45
    .local v7, notReady:Z
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->isContactsApplicationBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "SpeedDial"

    const-string v1, "[clearSharedPreferences]contacts application busy"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0040

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    const/4 v7, 0x1

    move v8, v7

    .line 83
    .end local v7           #notReady:Z
    .local v8, notReady:I
    :goto_0
    return v8

    .line 52
    .end local v8           #notReady:I
    .restart local v7       #notReady:Z
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 58
    .local v10, phoneCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 59
    :cond_1
    const-string v0, "clear preferences"

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v9

    .line 61
    .local v9, numOffset:I
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 62
    .local v11, simId:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v12

    .line 63
    .local v12, simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-virtual {v12, v11}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v13

    .line 64
    .local v13, slotId:I
    const/4 v0, -0x1

    if-eq v13, v0, :cond_2

    invoke-static {v13}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 66
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    const/4 v7, 0x1

    .line 74
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 75
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 79
    .end local v9           #numOffset:I
    .end local v11           #simId:I
    .end local v12           #simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    .end local v13           #slotId:I
    :cond_4
    if-eqz v10, :cond_5

    .line 80
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear preferences canUse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    move v8, v7

    .line 83
    .restart local v8       #notReady:I
    goto/16 :goto_0

    .line 71
    .end local v8           #notReady:I
    .restart local v9       #numOffset:I
    .restart local v11       #simId:I
    .restart local v12       #simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    .restart local v13       #slotId:I
    :cond_6
    invoke-static {v13}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public dial(I)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/dialpad/SpeedDial;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, number:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dial, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v3

    .line 94
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v5}, Lcom/android/contacts/ext/SpeedDialExtension;->needClearSharedPreferences(Ljava/lang/String;)Z

    move-result v2

    .line 96
    .local v2, reslut:Z
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/contacts/dialpad/SpeedDial;->clearSharedPreferences(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public enterSpeedDial()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public getSpeedDialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    const-string v0, "SpeedDial"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
