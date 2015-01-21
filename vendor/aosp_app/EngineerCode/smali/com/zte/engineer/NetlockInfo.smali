.class public Lcom/zte/engineer/NetlockInfo;
.super Landroid/app/Activity;
.source "NetlockInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 18
    const v4, 0x7f080039

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 19
    .local v3, text:Landroid/widget/TextView;
    const v4, 0x7f08003a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 20
    .local v1, listview:Landroid/widget/ListView;
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 23
    .local v2, mccmnc:[Ljava/lang/String;
    const/high16 v4, 0x41a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 24
    const-string v4, "Netlcok Num: 0\nMCC+MNC:\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 27
    .local v0, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x100

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method
