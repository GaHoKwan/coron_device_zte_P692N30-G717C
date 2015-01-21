.class public Lcom/android/quicksearchbox/ContactsSource;
.super Lcom/android/quicksearchbox/SearchableSource;
.source "ContactsSource.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "searchable"
    .parameter "uiThread"
    .parameter "iconLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/SearchableSource;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 33
    return-void
.end method
