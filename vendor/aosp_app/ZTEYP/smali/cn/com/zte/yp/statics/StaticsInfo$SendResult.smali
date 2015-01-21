.class public Lcn/com/zte/yp/statics/StaticsInfo$SendResult;
.super Ljava/lang/Object;
.source "StaticsInfo.java"

# interfaces
.implements Lcom/zte/statistics/sdk/CollectionSendResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/statics/StaticsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/statics/StaticsInfo;


# direct methods
.method public constructor <init>(Lcn/com/zte/yp/statics/StaticsInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcn/com/zte/yp/statics/StaticsInfo$SendResult;->this$0:Lcn/com/zte/yp/statics/StaticsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Z)V
    .locals 2
    .parameter "rs"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wss send result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 90
    return-void
.end method
