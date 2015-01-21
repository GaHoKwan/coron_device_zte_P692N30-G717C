.class public Lcom/zte/privacy/l;
.super Ljava/lang/Object;


# instance fields
.field final synthetic cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field public enabled:Z

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/l;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zte/privacy/l;->pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zte/privacy/l;->enabled:Z

    return-void
.end method
