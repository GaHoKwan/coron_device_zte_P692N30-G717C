.class enum Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName$1;
.super Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;-><init>(Ljava/lang/String;ILcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;)V

    .line 1
    return-void
.end method


# virtual methods
.method getCFUriString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:**21*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCancelCFUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    const-string v0, "tel:%23%2321%23"

    return-object v0
.end method

.method getOperCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    const-string v0, "46000"

    return-object v0
.end method
