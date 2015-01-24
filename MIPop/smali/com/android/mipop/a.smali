.class Lcom/android/mipop/a;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic eT:Lcom/android/mipop/MIPopActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/MIPopActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/a;->eT:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/a;->eT:Lcom/android/mipop/MIPopActivity;

    invoke-static {v0}, Lcom/android/mipop/MIPopActivity;->a(Lcom/android/mipop/MIPopActivity;)V

    return-void
.end method
