.class public Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;
.super Ljava/lang/Exception;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/down/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReconnectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x12b0851781776ad1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 171
    return-void
.end method
