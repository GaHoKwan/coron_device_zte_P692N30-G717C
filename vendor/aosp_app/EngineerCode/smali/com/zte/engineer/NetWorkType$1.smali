.class Lcom/zte/engineer/NetWorkType$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetWorkType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/NetWorkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/NetWorkType;


# direct methods
.method constructor <init>(Lcom/zte/engineer/NetWorkType;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/engineer/NetWorkType$1;->this$0:Lcom/zte/engineer/NetWorkType;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 65
    return-void
.end method
