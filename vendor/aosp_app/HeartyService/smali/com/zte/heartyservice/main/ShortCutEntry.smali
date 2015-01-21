.class public Lcom/zte/heartyservice/main/ShortCutEntry;
.super Landroid/app/Activity;
.source "ShortCutEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/ShortCutEntry;->finish()V

    .line 11
    return-void
.end method
