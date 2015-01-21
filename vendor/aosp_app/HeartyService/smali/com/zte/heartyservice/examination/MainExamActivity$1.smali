.class Lcom/zte/heartyservice/examination/MainExamActivity$1;
.super Ljava/lang/Object;
.source "MainExamActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$1;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$1;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v1, 0x13

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 180
    return-void
.end method
