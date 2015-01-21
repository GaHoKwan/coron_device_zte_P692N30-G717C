.class public Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;
.super Landroid/os/AsyncTask;
.source "OP09ContactListExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/OP09ContactListExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSimCardStorageInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

.field private static sSurplugMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlgContent:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mIsException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 75
    iput-boolean v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 76
    iput-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 93
    const-string v0, "OP09ContactListExtension"

    const-string v1, "[ShowSimCardStorageInfoTask] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static showSimCardStorageInfo(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "OP09ContactListExtension"

    const-string v1, "[ShowSimCardStorageInfoTask]_beg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->cancel()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    .line 86
    :cond_0
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    .line 87
    sget-object v0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    const-string v0, "OP09ContactListExtension"

    const-string v1, "[ShowSimCardStorageInfoTask]_end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 158
    iput-boolean v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 159
    const-string v0, "OP09ContactListExtension"

    const-string v1, "[ShowSimCardStorageInfoTask]: mIsCancelled = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "args"

    .prologue
    .line 98
    const-string v8, "OP09ContactListExtension"

    const-string v9, "[ShowSimCardStorageInfoTask]: doInBackground_beg"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v8, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 100
    iget-object v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 101
    .local v6, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const-string v8, "OP09ContactListExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask]: simInfos.size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v8, :cond_8

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, build:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 105
    .local v4, simId:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    .line 106
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-lez v4, :cond_1

    .line 107
    const-string v8, "\n\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 110
    const/4 v7, 0x0

    .line 111
    .local v7, storageInfos:[I
    const-string v8, "OP09ContactListExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask] simName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; simSlot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; simId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v8, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v8, ":\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :try_start_0
    const-string v8, "phoneEx"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v3

    .line 119
    .local v3, phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    iget-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v8, :cond_4

    if-eqz v3, :cond_4

    .line 120
    iget v8, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v3, v8}, Lcom/mediatek/common/telephony/ITelephonyEx;->getAdnStorageInfo(I)[I

    move-result-object v7

    .line 121
    if-nez v7, :cond_2

    .line 122
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 123
    const-string v8, "OP09ContactListExtension"

    const-string v9, " storageInfos is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    .line 153
    .end local v0           #build:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v4           #simId:I
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v7           #storageInfos:[I
    :goto_0
    return-object v8

    .line 126
    .restart local v0       #build:Ljava/lang/StringBuilder;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .restart local v4       #simId:I
    .restart local v5       #simInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v7       #storageInfos:[I
    :cond_2
    const-string v8, "OP09ContactListExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask] infos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const-string v9, "OP09ContactListExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slotId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "||storage:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_5

    const-string v8, "NULL"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "||used:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_6

    const-string v8, "NULL"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v7, :cond_3

    const/4 v8, 0x1

    aget v8, v7, v8

    if-lez v8, :cond_3

    .line 142
    sget-object v8, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    iget-object v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09011c

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-eqz v8, :cond_0

    .line 147
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 129
    :cond_4
    :try_start_1
    const-string v8, "OP09ContactListExtension"

    const-string v9, "[ShowSimCardStorageInfoTask]: phone = null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 133
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v1

    .line 134
    .local v1, ex:Landroid/os/RemoteException;
    const-string v8, "OP09ContactListExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask]_exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 136
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 138
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v3       #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_5
    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_2

    .line 150
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v7           #storageInfos:[I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 152
    .end local v0           #build:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #simId:I
    :cond_8
    const-string v8, "OP09ContactListExtension"

    const-string v9, "[ShowSimCardStorageInfoTask]: doInBackground_end"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, string:Ljava/lang/String;
    sput-object v5, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;

    .line 167
    iget-boolean v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 171
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 172
    iput-boolean v4, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 173
    return-void
.end method
