.class Lcom/zte/heartyservice/setting/AutoExam$3;
.super Ljava/lang/Object;
.source "AutoExam.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AutoExam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoExam;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoExam;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 265
    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-static {v0}, Lcom/zte/heartyservice/setting/AutoExam;->access$708(Lcom/zte/heartyservice/setting/AutoExam;)I

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-static {v0}, Lcom/zte/heartyservice/setting/AutoExam;->access$810(Lcom/zte/heartyservice/setting/AutoExam;)I

    .line 274
    const-string v0, "AutoExam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug AutoExam callBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$800(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I
    invoke-static {v0}, Lcom/zte/heartyservice/setting/AutoExam;->access$800(Lcom/zte/heartyservice/setting/AutoExam;)I

    move-result v0

    if-nez v0, :cond_2

    .line 276
    const-string v0, "AutoExam"

    const-string v1, "liuji debug CheckResults 000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$3;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$100(Lcom/zte/heartyservice/setting/AutoExam;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$200(Lcom/zte/heartyservice/setting/AutoExam;Ljava/lang/String;)V

    .line 279
    :cond_2
    return-void
.end method
