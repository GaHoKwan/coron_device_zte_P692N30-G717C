.class Lcom/mediatek/apst/target/service/SmsSender$SendingTask;
.super Ljava/lang/Object;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/SmsSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingTask"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSimId:I

.field public mSms:Lcom/mediatek/apst/util/entity/message/Sms;

.field final synthetic this$0:Lcom/mediatek/apst/target/service/SmsSender;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/service/SmsSender;Lcom/mediatek/apst/util/entity/message/Sms;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "sms"
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mSms:Lcom/mediatek/apst/util/entity/message/Sms;

    .line 276
    iput-object p3, p0, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mContext:Landroid/content/Context;

    .line 277
    iput p4, p0, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mSimId:I

    .line 278
    return-void
.end method
