class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update, :destroy, :enroll]

	# GET /students
	# GET /students.json
	def index
		@students = Student.all
	end

	# GET /students/1
	# GET /students/1.json
	def show
	end

	# GET /students/new
	def new
		@student = Student.new
		@student.studentid = '900'
		@student.name = 'Enter Name Here'
		
	end

	# GET /students/1/edit
	def edit
	end
	
	def search
		@students = Student.where("name like ?", "%#{params[:q]}%")
		render :index
	end

	# POST /students
	# POST /students.json
	def create
		@student = Student.create(student_params)

		respond_to do |format|
			if @student.save
				format.html { redirect_to @student, notice: 'Student was successfully created.' }
				format.json { @students = Student.all }
			else
				format.html { render :new }
				format.json { render json: @student.errors, status: :unprocessable_entity }
			end
		end
	end
	
	# POST /students/1/enroll
	def enroll
		@section = Section.find(params[:section_id])
		@section.students << @student
		
		respond_to do
			@students = Student.all
		end
		
	end
	
	
	
	
	# PATCH/PUT /students/1
	# PATCH/PUT /students/1.json
	def update
		respond_to do |format|
			if @student.update_attributes(student_params)
				format.html { redirect_to @student, notice: 'Student was successfully updated.' }
				format.json { render :show, status: :ok, location: @student }
			else
				format.html { render :edit }
				format.json { render json: @student.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /students/1
	# DELETE /students/1.json
	def destroy
		@student.destroy
		respond_to do |format|
			format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_student
			@student = Student.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def student_params
			# :advisors => []
			params.require(:student).permit(:name, :studentid)
		end
		
		def enroll_params
			params.require(:section_id)
		end
end
