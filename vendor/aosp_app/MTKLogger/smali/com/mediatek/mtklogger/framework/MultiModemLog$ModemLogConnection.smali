.class Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;
.super Lcom/mediatek/mtklogger/framework/LogConnection;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemLogConnection"
.end annotation


# instance fields
.field private mConnType:I

.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "connType"
    .parameter "socketName"
    .parameter "handler"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    .line 890
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/mediatek/mtklogger/framework/LogConnection;-><init>(ILjava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->mConnType:I

    .line 891
    iput p2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->mConnType:I

    .line 892
    return-void
.end method


# virtual methods
.method public dealWithResponse([BLandroid/os/Handler;)V
    .locals 11
    .parameter "respBuffer"
    .parameter "handler"

    .prologue
    .line 896
    invoke-super {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/LogConnection;->dealWithResponse([BLandroid/os/Handler;)V

    .line 897
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 898
    .local v5, respStr:Ljava/lang/String;
    const-string v7, "MTKLogger/MultiModemLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->dealWithResponse(), resp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 900
    :cond_0
    const-string v7, "MTKLogger/MultiModemLog"

    const-string v8, "Get an empty response from native, ignore it."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :goto_0
    return-void

    .line 904
    :cond_1
    const/4 v3, 0x0

    .line 905
    .local v3, msgType:I
    const/4 v1, 0x0

    .line 906
    .local v1, extraStr:Ljava/lang/String;
    const/4 v4, -0x1

    .line 908
    .local v4, newLogStatus:I
    const-string v7, "start,"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "deep_start,"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 909
    :cond_2
    const/16 v3, 0x19

    .line 910
    const-string v7, ",1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 911
    const/4 v4, 0x1

    .line 958
    :cond_3
    :goto_1
    invoke-virtual {p2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 959
    .local v2, msg:Landroid/os/Message;
    iget v7, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->mConnType:I

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 960
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 961
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 963
    :cond_4
    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 964
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 912
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    const-string v7, ",0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 913
    const/4 v4, 0x0

    .line 914
    const-string v1, "4"

    goto :goto_1

    .line 916
    :cond_6
    const-string v7, "stop"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "deep_pause"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 917
    :cond_7
    const-string v7, "MTKLogger/MultiModemLog"

    const-string v8, "At present, ignore pause command response, just stop log directly"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_8
    const-string v7, "MEMORYDUMP_START"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 920
    const/16 v3, 0x46

    goto :goto_1

    .line 921
    :cond_9
    const-string v7, "MEMORYDUMP_DONE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 922
    const/16 v3, 0x47

    .line 924
    const-string v7, "MEMORYDUMP_DONE"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 925
    .local v6, start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 926
    .local v0, end:I
    if-ge v6, v0, :cond_a

    .line 927
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 934
    :goto_2
    const-string v7, "MTKLogger/MultiModemLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try to save modem assert file name to file, file name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v7, v7, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "md_assert_file_path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;->mConnType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    const-string v7, "MTKLogger/MultiModemLog"

    const-string v8, "Save modem assert file name to file done"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 929
    :cond_a
    const-string v7, "MTKLogger/MultiModemLog"

    const-string v8, "Invalid dump done message from native."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 938
    .end local v0           #end:I
    .end local v6           #start:I
    :cond_b
    const-string v7, "LOGFILE_NOTEXIST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 939
    const/16 v3, 0x48

    goto/16 :goto_1

    .line 940
    :cond_c
    const-string v7, "FAIL_SENDFILTER"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 941
    const/16 v3, 0x49

    goto/16 :goto_1

    .line 942
    :cond_d
    const-string v7, "FAIL_WRITEFILE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 943
    const/16 v3, 0x4a

    goto/16 :goto_1

    .line 944
    :cond_e
    const-string v7, "SDCARD_FULL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 945
    const/16 v3, 0x4b

    goto/16 :goto_1

    .line 946
    :cond_f
    const-string v7, "ispaused"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 947
    const/16 v3, 0x4c

    .line 949
    const-string v7, "ispaused"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 950
    .restart local v6       #start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 951
    .restart local v0       #end:I
    if-ge v6, v0, :cond_10

    .line 952
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 954
    :cond_10
    const-string v7, "MTKLogger/MultiModemLog"

    const-string v8, "Invalid puase status response from native."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
