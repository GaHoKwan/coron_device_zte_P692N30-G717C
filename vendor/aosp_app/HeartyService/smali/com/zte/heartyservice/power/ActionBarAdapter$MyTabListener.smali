.class Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/zte/heartyservice/power/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/ActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->this$0:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/ActionBarAdapter;Lcom/zte/heartyservice/power/ActionBarAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;-><init>(Lcom/zte/heartyservice/power/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 73
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "arg1"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/zte/heartyservice/power/ActionBarAdapter$MyTabListener;->this$0:Lcom/zte/heartyservice/power/ActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 84
    return-void
.end method
