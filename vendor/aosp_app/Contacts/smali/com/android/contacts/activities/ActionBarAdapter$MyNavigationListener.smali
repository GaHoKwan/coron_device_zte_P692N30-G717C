.class Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNavigationListener"
.end annotation


# instance fields
.field public mIgnoreNavigationItemSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #calls: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v1, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 301
    :cond_0
    const/4 v0, 0x1

    return v0
.end method