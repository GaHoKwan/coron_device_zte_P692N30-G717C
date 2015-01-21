.class public Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomModeHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private radioButton:Landroid/widget/ImageView;

.field private summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const v0, 0x7f0e0059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;->title:Landroid/widget/TextView;

    .line 567
    const v0, 0x7f0e005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;->radioButton:Landroid/widget/ImageView;

    .line 568
    const v0, 0x7f0e0091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;->icon:Landroid/widget/ImageView;

    .line 569
    return-void
.end method
