.class public final Lcom/a/u;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/a/v;

.field b:Landroid/location/Location;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/v;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/a/u;->a:Lcom/a/v;

    return-void
.end method
