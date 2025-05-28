class TabularQueryService
  def initialize(scope)
    @scope = scope
  end

  def with_filters(filters, input)
    filters.each do |filter|
      @scope = filter.call(scope: @scope, input: input)
    end

    self
  end

  def with_pagination(page, page_size)
    @scope = @scope.offset((page - 1) * page_size).limit(page_size)

    self
  end

  def with_default_sorting(sort_by, sort_direction)
    @scope = @scope.order(sort_by => sort_direction)

    self
  end

  def select(columns)
    @scope.select(columns)
  end

  def count
    @scope.count
  end
end
