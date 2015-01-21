.class public abstract Lcom/zte/heartyservice/common/porting/PortConnection;
.super Ljava/lang/Object;
.source "PortConnection.java"


# static fields
.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_ALLOWED:I

    .line 8
    const/4 v0, 0x2

    sput v0, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_RESTRICTED:I

    .line 9
    const/4 v0, 0x3

    sput v0, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_UNKNOWN:I

    .line 10
    const/4 v0, 0x4

    sput v0, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
