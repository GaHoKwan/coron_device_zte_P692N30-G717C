.class public Lcom/zte/privacy/ad;
.super Ljava/lang/Object;


# instance fields
.field public end:I

.field public kA:I

.field public kz:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public start:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/privacy/ad;->kA:I

    iput p2, p0, Lcom/zte/privacy/ad;->start:I

    iput p3, p0, Lcom/zte/privacy/ad;->end:I

    iput-object p4, p0, Lcom/zte/privacy/ad;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/privacy/ad;->type:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/privacy/ad;->kz:Ljava/lang/String;

    return-void
.end method
