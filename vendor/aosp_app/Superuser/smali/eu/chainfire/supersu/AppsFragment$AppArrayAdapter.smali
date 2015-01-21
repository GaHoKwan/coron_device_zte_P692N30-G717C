.class Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<Leu/chainfire/supersu/Settings$App;>;"
    }
.end annotation


# instance fields
.field private ˮ͈:Landroid/view/LayoutInflater;

.field final synthetic 櫯:Leu/chainfire/supersu/AppsFragment;

.field 鷭:I


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/AppsFragment;Landroid/support/v4/app/FragmentActivity;I[Leu/chainfire/supersu/Settings$App;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->櫯:Leu/chainfire/supersu/AppsFragment;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->ˮ͈:Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->ˮ͈:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->ˮ͈:Landroid/view/LayoutInflater;

    .line 54
    .line 55
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->ˮ͈:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    move-object p3, v0

    .line 58
    const v0, 0x7f040034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, p3

    invoke-virtual {p3}, Leu/chainfire/supersu/Settings$App;->鷭()V

    iget-object v1, v5, Leu/chainfire/supersu/Settings$App;->ċ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const v0, 0x7f040035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, p3

    invoke-virtual {p3}, Leu/chainfire/supersu/Settings$App;->鷭()V

    iget-object v1, v5, Leu/chainfire/supersu/Settings$App;->Ȋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f040036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    iget v1, p3, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 62
    const v1, 0x7f02005a

    goto :goto_0

    .line 63
    :cond_2
    iget v1, p3, Leu/chainfire/supersu/Settings$App;->庸:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 64
    iget-wide v1, p3, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const v1, 0x7f020059

    goto :goto_0

    :cond_3
    const v1, 0x7f020057

    goto :goto_0

    .line 65
    :cond_4
    iget-wide v1, p3, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const v1, 0x7f02005b

    goto :goto_0

    :cond_5
    const v1, 0x7f020058

    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    const v0, 0x7f040037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->櫯:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/MainActivity;

    iget-boolean v1, v1, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-eqz v1, :cond_7

    .line 73
    iget v1, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->鷭:I

    if-ne p1, v1, :cond_6

    .line 74
    const/4 v1, 0x0

    goto :goto_1

    .line 75
    :cond_6
    const/4 v1, 0x4

    .line 76
    goto :goto_1

    :cond_7
    const/16 v1, 0x8

    .line 71
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-object p2
.end method
