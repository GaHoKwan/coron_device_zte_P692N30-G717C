.class public Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "OP09EmergencyCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09EmergencyCallOptionHandler"


# instance fields
.field private mPluginContext:Landroid/content/Context;

.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pluginContext"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mPluginContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 255
    const-string v0, "OP09EmergencyCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private showSimSelectionDialog()V
    .locals 7

    .prologue
    .line 189
    const-string v1, "showSimSelectionDialog()"

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mPluginContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;JZ)V

    .line 192
    .local v0, simPickerAdapter:Lcom/mediatek/calloption/SimPickerAdapter;
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->createSimPickerItemHolder(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/SimPickerAdapter;->setItems(Ljava/util/List;)V

    .line 195
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mPluginContext:Landroid/content/Context;

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 199
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 202
    return-void
.end method


# virtual methods
.method public createSimPickerItemHolder(Landroid/content/Context;ZZ)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "addInternet"
    .parameter "isMultiSim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 226
    .local v2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, itemHolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;>;"
    const/4 v4, 0x0

    .line 229
    .local v4, temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 230
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-static {v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    .local v1, phoneType:I
    new-instance v4, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v4           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    new-instance v5, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;

    invoke-direct {v5, v1, v6}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;-><init>(II)V

    invoke-direct {v4, v5, v8}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 234
    .restart local v4       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v1           #phoneType:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-static {v5, v7}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 242
    .restart local v1       #phoneType:I
    new-instance v4, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v4           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    new-instance v5, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;

    invoke-direct {v5, v1, v7}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;-><init>(II)V

    invoke-direct {v4, v5, v8}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 244
    .restart local v4       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v1           #phoneType:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item holder size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 251
    return-object v0

    .line 236
    :cond_0
    new-instance v4, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v4           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 238
    .restart local v4       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    new-instance v4, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v4           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 248
    .restart local v4       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 11
    .parameter "request"

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 80
    const-string v8, "handleRequest()"

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 84
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, number:Ljava/lang/String;
    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.slot"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v10, v7, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->showSimSelectionDialog()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v4}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 97
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 101
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 108
    .local v6, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.android.phone.extra.slot"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 110
    .local v5, slotIntent:I
    if-eq v10, v5, :cond_6

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 111
    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_5
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 115
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 119
    :cond_6
    const/4 v8, 0x2

    invoke-static {v2, v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v0

    .line 120
    .local v0, isCdmaECC:Z
    invoke-static {v2, v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    .line 121
    .local v1, isGsmECC:Z
    if-eq v10, v5, :cond_e

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    if-ne v4, v8, :cond_e

    .line 122
    invoke-static {v5}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 123
    const-string v8, "Insert one sim in CDMA slot"

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 124
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 125
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 127
    .local v4, slotGsm:I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number is GSM ECC but not CDMA ECC, set slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.slot"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v4           #slotGsm:I
    :cond_7
    move v4, v7

    .line 125
    goto :goto_1

    .line 130
    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 131
    const-string v7, "The number is CDMA ECC but not GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    :cond_9
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 134
    const-string v7, "The number is CDMA ECC and GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->showSimSelectionDialog()V

    goto/16 :goto_0

    .line 137
    :cond_a
    const-string v7, "The number is NOT CDMA ECC and GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v7, "Insert one sim in GSM slot"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 144
    if-eqz v0, :cond_c

    .line 145
    const-string v7, "The number is CDMA ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->showSimSelectionDialog()V

    goto/16 :goto_0

    .line 147
    :cond_c
    if-eqz v1, :cond_d

    .line 148
    const-string v7, "The number is GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    :cond_d
    const-string v7, "The number is NOT CDMA ECC and GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 153
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 157
    :cond_e
    if-eq v10, v5, :cond_f

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    if-nez v8, :cond_15

    .line 158
    :cond_f
    const-string v8, "not insert any sim"

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 159
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 160
    const-string v7, "The number is CDMA ECC and GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->showSimSelectionDialog()V

    goto/16 :goto_0

    .line 162
    :cond_10
    if-eqz v0, :cond_12

    if-nez v1, :cond_12

    .line 163
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-eqz v8, :cond_11

    move v3, v7

    .line 165
    .local v3, slotCdma:I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number is CDMA ECC but not GSM ECC, set slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.slot"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3           #slotCdma:I
    :cond_11
    move v3, v4

    .line 163
    goto :goto_2

    .line 168
    :cond_12
    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    .line 169
    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->isCDMAPhoneTypeBySlot(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 171
    .restart local v4       #slotGsm:I
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number is GSM ECC but not CDMA ECC, set slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.slot"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v4           #slotGsm:I
    :cond_13
    move v4, v7

    .line 169
    goto :goto_3

    .line 175
    :cond_14
    const-string v7, "The number is NOT CDMA ECC and GSM ECC"

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 177
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 181
    :cond_15
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 182
    iget-object v7, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v7, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 220
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 222
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 206
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 207
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 209
    .local v2, slot:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() is called, slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 211
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v4}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 216
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/plugin/OP09EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 217
    return-void
.end method
