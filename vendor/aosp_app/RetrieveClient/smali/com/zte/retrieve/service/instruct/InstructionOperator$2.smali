.class Lcom/zte/retrieve/service/instruct/InstructionOperator$2;
.super Ljava/util/TimerTask;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator;->holdRingMax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$2;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 447
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$2;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #calls: Lcom/zte/retrieve/service/instruct/InstructionOperator;->ringMax()V
    invoke-static {v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$7(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V

    .line 451
    return-void
.end method
