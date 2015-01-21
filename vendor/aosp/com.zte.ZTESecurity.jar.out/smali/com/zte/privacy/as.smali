.class public Lcom/zte/privacy/as;
.super Ljava/lang/Object;


# instance fields
.field public eventType:I

.field public needNotify:Z

.field public permission:Ljava/lang/String;

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/as;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/privacy/as;->permission:Ljava/lang/String;

    iput p3, p0, Lcom/zte/privacy/as;->eventType:I

    iput-boolean p4, p0, Lcom/zte/privacy/as;->needNotify:Z

    return-void
.end method
